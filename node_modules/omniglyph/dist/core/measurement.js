/**
 * Pure body-shaping utilities for the uncompressed count_tokens counterfactual.
 * No fetch, auth, or Node APIs — hosts supply their own transport.
 */
/** Fields accepted by /v1/messages/count_tokens. Any other field returns 400 "Unknown parameter". */
const COUNT_TOKENS_FIELDS = new Set([
    'model',
    'messages',
    'system',
    'tools',
    'tool_choice',
    'thinking',
    'mcp_servers',
]);
function toUint8Array(bytes) {
    if (bytes instanceof Uint8Array)
        return bytes;
    if (bytes instanceof ArrayBuffer)
        return new Uint8Array(bytes);
    return new Uint8Array(bytes.buffer, bytes.byteOffset, bytes.byteLength);
}
export function buildCountTokensBodies(bytes) {
    const b = toUint8Array(bytes);
    return {
        fullBody: buildBaselineCountTokensBody(b),
        cacheablePrefixBody: buildCacheablePrefixCountTokensBody(b),
    };
}
export function buildBaselineCountTokensBody(bytes) {
    const b = toUint8Array(bytes);
    try {
        const obj = JSON.parse(new TextDecoder().decode(b));
        const out = {};
        for (const k of Object.keys(obj)) {
            if (COUNT_TOKENS_FIELDS.has(k))
                out[k] = obj[k];
        }
        if (typeof out.model !== 'string' || !Array.isArray(out.messages))
            return null;
        return new TextEncoder().encode(JSON.stringify(out));
    }
    catch {
        return null;
    }
}
/** True when an object carries a cache_control key (presence only; value ignored). */
function hasCacheControl(x) {
    return (typeof x === 'object'
        && x !== null
        && x.cache_control != null);
}
/** Return tool_use ids with no matching tool_result. count_tokens rejects orphans;
 *  truncating at a cache_control marker commonly creates them (result is in the dropped tail). */
function findOrphanToolUseIds(messages) {
    const uses = [];
    const results = new Set();
    for (const msg of messages) {
        if (!msg || typeof msg !== 'object')
            continue;
        const content = msg.content;
        if (!Array.isArray(content))
            continue;
        for (const blk of content) {
            if (!blk || typeof blk !== 'object')
                continue;
            const t = blk.type;
            if (t === 'tool_use') {
                const id = blk.id;
                if (typeof id === 'string')
                    uses.push(id);
            }
            else if (t === 'tool_result') {
                const id = blk.tool_use_id;
                if (typeof id === 'string')
                    results.add(id);
            }
        }
    }
    return uses.filter((id) => !results.has(id));
}
/** Append minimal synthetic tool_results for orphan tool_use ids so count_tokens won't reject the body.
 *  Adds only a handful of tokens; keeps estimate within ~1% of truth. */
function appendSyntheticToolResults(truncated) {
    const messages = truncated.messages;
    if (!Array.isArray(messages))
        return truncated;
    const orphanIds = findOrphanToolUseIds(messages);
    if (orphanIds.length === 0)
        return truncated;
    const syntheticUserMsg = {
        role: 'user',
        content: orphanIds.map((id) => ({
            type: 'tool_result',
            tool_use_id: id,
            content: 'ok',
        })),
    };
    return { ...truncated, messages: [...messages, syntheticUserMsg] };
}
/** Build a body containing only the longest cacheable prefix (everything up to and including the last
 *  cache_control marker). count_tokens on this body gives cacheable_prefix_tokens.
 *  Walk order (latest-first in cache order): messages → system → tools.
 *  Returns null when no markers exist (cacheable_prefix_tokens = 0). */
export function buildCacheablePrefixCountTokensBody(bytes) {
    const b = toUint8Array(bytes);
    let obj;
    try {
        obj = JSON.parse(new TextDecoder().decode(b));
    }
    catch {
        return null;
    }
    if (typeof obj.model !== 'string')
        return null;
    const system = obj.system;
    const messages = obj.messages;
    const tools = obj.tools;
    let truncated = null;
    if (Array.isArray(messages)) {
        for (let mi = messages.length - 1; mi >= 0 && truncated == null; mi--) {
            const msg = messages[mi];
            const content = msg?.content;
            if (Array.isArray(content)) {
                for (let bi = content.length - 1; bi >= 0; bi--) {
                    if (hasCacheControl(content[bi])) {
                        const truncatedMsg = { ...msg, content: content.slice(0, bi + 1) };
                        const truncatedMessages = messages.slice(0, mi).concat([truncatedMsg]);
                        truncated = {
                            model: obj.model,
                            messages: truncatedMessages,
                        };
                        if (system !== undefined)
                            truncated.system = system;
                        if (tools !== undefined)
                            truncated.tools = tools;
                        break;
                    }
                }
            }
            else if (hasCacheControl(msg)) {
                truncated = {
                    model: obj.model,
                    messages: messages.slice(0, mi + 1),
                };
                if (system !== undefined)
                    truncated.system = system;
                if (tools !== undefined)
                    truncated.tools = tools;
            }
        }
    }
    if (truncated == null && Array.isArray(system)) {
        for (let si = system.length - 1; si >= 0; si--) {
            if (hasCacheControl(system[si])) {
                truncated = {
                    model: obj.model,
                    system: system.slice(0, si + 1),
                    messages: [{ role: 'user', content: 'x' }],
                };
                if (tools !== undefined)
                    truncated.tools = tools;
                break;
            }
        }
    }
    if (truncated == null && Array.isArray(tools)) {
        for (let ti = tools.length - 1; ti >= 0; ti--) {
            if (hasCacheControl(tools[ti])) {
                truncated = {
                    model: obj.model,
                    tools: tools.slice(0, ti + 1),
                    messages: [{ role: 'user', content: 'x' }],
                };
                break;
            }
        }
    }
    if (truncated == null)
        return null;
    truncated = appendSyntheticToolResults(truncated);
    const out = {};
    for (const k of Object.keys(truncated)) {
        if (COUNT_TOKENS_FIELDS.has(k))
            out[k] = truncated[k];
    }
    return new TextEncoder().encode(JSON.stringify(out));
}
/** Count cache_control markers anywhere in an Anthropic Messages body. */
export function countCacheControlMarkers(bytes) {
    const b = toUint8Array(bytes);
    try {
        return countCacheControlValue(JSON.parse(new TextDecoder().decode(b)));
    }
    catch {
        return 0;
    }
}
function countCacheControlValue(value) {
    if (!value || typeof value !== 'object')
        return 0;
    let n = hasCacheControl(value) ? 1 : 0;
    if (Array.isArray(value)) {
        for (const item of value)
            n += countCacheControlValue(item);
    }
    else {
        for (const item of Object.values(value)) {
            n += countCacheControlValue(item);
        }
    }
    return n;
}
//# sourceMappingURL=measurement.js.map