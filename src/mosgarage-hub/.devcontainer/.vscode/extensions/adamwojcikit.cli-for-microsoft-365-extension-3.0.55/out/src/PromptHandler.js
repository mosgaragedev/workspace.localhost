"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __asyncValues = (this && this.__asyncValues) || function (o) {
    if (!Symbol.asyncIterator) throw new TypeError("Symbol.asyncIterator is not defined.");
    var m = o[Symbol.asyncIterator], i;
    return m ? m.call(o) : (o = typeof __values === "function" ? __values(o) : o[Symbol.iterator](), i = {}, verb("next"), verb("throw"), verb("return"), i[Symbol.asyncIterator] = function () { return this; }, i);
    function verb(n) { i[n] = o[n] && function (v) { return new Promise(function (resolve, reject) { v = o[n](v), settle(resolve, reject, v.done, v.value); }); }; }
    function settle(resolve, reject, d, v) { Promise.resolve(v).then(function(v) { resolve({ value: v, done: d }); }, reject); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.PromptHandler = exports.MODEL_SELECTOR = void 0;
const vscode = __importStar(require("vscode"));
const Constants_1 = require("../constants/Constants");
const Prompt_1 = require("../constants/Prompt");
exports.MODEL_SELECTOR = { vendor: 'copilot', family: 'gpt-3.5-turbo' };
class PromptHandler {
    static handle(request, context, response, token) {
        var e_1, _a, e_2, _b, e_3, _c;
        return __awaiter(this, void 0, void 0, function* () {
            let messages = [];
            const [model] = yield vscode.lm.selectChatModels(exports.MODEL_SELECTOR);
            let chatResponse;
            switch (request.command) {
                case 'command':
                    response.progress('Checking...'); //TODO: create a random progress response
                    messages = [
                        vscode.LanguageModelChatMessage.User(`${Prompt_1.basic}${Prompt_1.command}`),
                        vscode.LanguageModelChatMessage.User(request.prompt)
                    ];
                    chatResponse = yield model.sendRequest(messages, {}, token);
                    try {
                        for (var _d = __asyncValues(chatResponse.text), _e; _e = yield _d.next(), !_e.done;) {
                            const fragment = _e.value;
                            response.markdown(fragment);
                        }
                    }
                    catch (e_1_1) { e_1 = { error: e_1_1 }; }
                    finally {
                        try {
                            if (_e && !_e.done && (_a = _d.return)) yield _a.call(_d);
                        }
                        finally { if (e_1) throw e_1.error; }
                    }
                    break;
                case 'script':
                    response.progress('Checking...'); //TODO: create a random progress response
                    messages = [
                        vscode.LanguageModelChatMessage.User(`${Prompt_1.basic}${Prompt_1.sample}`),
                        vscode.LanguageModelChatMessage.User(request.prompt)
                    ];
                    chatResponse = yield model.sendRequest(messages, {}, token);
                    try {
                        for (var _f = __asyncValues(chatResponse.text), _g; _g = yield _f.next(), !_g.done;) {
                            const fragment = _g.value;
                            response.markdown(fragment);
                        }
                    }
                    catch (e_2_1) { e_2 = { error: e_2_1 }; }
                    finally {
                        try {
                            if (_g && !_g.done && (_b = _f.return)) yield _b.call(_f);
                        }
                        finally { if (e_2) throw e_2.error; }
                    }
                    response.button({
                        command: Constants_1.SAMPLES_COMMAND,
                        title: vscode.l10n.t('Open Sample Gallery'),
                    });
                    break;
                default:
                    messages = [
                        vscode.LanguageModelChatMessage.User(`${Prompt_1.basic}${Prompt_1.references}`),
                        vscode.LanguageModelChatMessage.User(request.prompt)
                    ];
                    chatResponse = yield model.sendRequest(messages, {}, token);
                    try {
                        for (var _h = __asyncValues(chatResponse.text), _j; _j = yield _h.next(), !_j.done;) {
                            const fragment = _j.value;
                            response.markdown(fragment);
                        }
                    }
                    catch (e_3_1) { e_3 = { error: e_3_1 }; }
                    finally {
                        try {
                            if (_j && !_j.done && (_c = _h.return)) yield _c.call(_h);
                        }
                        finally { if (e_3) throw e_3.error; }
                    }
            }
            return { metadata: { command: '' } };
        });
    }
}
exports.PromptHandler = PromptHandler;
//# sourceMappingURL=PromptHandler.js.map