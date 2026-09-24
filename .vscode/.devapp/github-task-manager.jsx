import { useState, useCallback, useRef } from "react";
import * as XLSX from "xlsx";

// ── GitHub API helpers ────────────────────────────────────────────────────────

async function ghGraphQL(token, query, variables = {}) {
  const res = await fetch("https://api.github.com/graphql", {
    method: "POST",
    headers: {
      Authorization: `Bearer ${token}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ query, variables }),
  });
  const json = await res.json();
  if (json.errors) throw new Error(json.errors[0].message);
  return json.data;
}

async function ghREST(token, path, method = "GET", body = null) {
  const res = await fetch(`https://api.github.com${path}`, {
    method,
    headers: {
      Authorization: `Bearer ${token}`,
      "Content-Type": "application/json",
      Accept: "application/vnd.github+json",
    },
    body: body ? JSON.stringify(body) : null,
  });
  if (!res.ok) {
    const err = await res.json().catch(() => ({}));
    throw new Error(err.message || `HTTP ${res.status}`);
  }
  return res.json();
}

async function fetchProjects(token) {
  const data = await ghGraphQL(token, `
    query {
      viewer {
        login
        projectsV2(first: 50) {
          nodes { id number title url }
        }
        organizations(first: 20) {
          nodes {
            login
            projectsV2(first: 50) {
              nodes { id number title url }
            }
          }
        }
      }
    }
  `);
  const personal = data.viewer.projectsV2.nodes.map(p => ({
    ...p, owner: data.viewer.login, ownerType: "user"
  }));
  const org = data.viewer.organizations.nodes.flatMap(o =>
    o.projectsV2.nodes.map(p => ({ ...p, owner: o.login, ownerType: "org" }))
  );
  return [...personal, ...org];
}

async function fetchRepos(token) {
  let repos = [], page = 1;
  while (true) {
    const batch = await ghREST(token, `/user/repos?per_page=100&page=${page}&sort=updated`);
    repos = [...repos, ...batch];
    if (batch.length < 100) break;
    page++;
  }
  return repos;
}

async function createIssue(token, owner, repo, title, body, labels, assignees) {
  return ghREST(token, `/repos/${owner}/${repo}/issues`, "POST", {
    title, body: body || "",
    labels: labels ? labels.split(",").map(l => l.trim()).filter(Boolean) : [],
    assignees: assignees ? assignees.split(",").map(a => a.trim()).filter(Boolean) : [],
  });
}

async function addIssueToProject(token, projectId, issueId) {
  const data = await ghGraphQL(token, `
    mutation($projectId: ID!, $contentId: ID!) {
      addProjectV2ItemById(input: { projectId: $projectId, contentId: $contentId }) {
        item { id }
      }
    }
  `, { projectId, contentId: issueId });
  return data.addProjectV2ItemById.item;
}

// ── Components ────────────────────────────────────────────────────────────────

const STATUS = { idle: "idle", loading: "loading", success: "success", error: "error" };

function Badge({ children, color = "#4ade80" }) {
  return (
    <span style={{
      display: "inline-flex", alignItems: "center", gap: 4,
      padding: "2px 8px", borderRadius: 4,
      background: color + "22", color, fontSize: 11, fontWeight: 600,
      border: `1px solid ${color}44`, letterSpacing: "0.05em",
    }}>{children}</span>
  );
}

function Spinner() {
  return (
    <span style={{
      display: "inline-block", width: 14, height: 14,
      border: "2px solid #334155", borderTopColor: "#38bdf8",
      borderRadius: "50%", animation: "spin 0.7s linear infinite",
    }} />
  );
}

function TaskRow({ task, index }) {
  const statusColor = {
    pending: "#94a3b8",
    creating: "#38bdf8",
    done: "#4ade80",
    error: "#f87171",
  }[task.status] || "#94a3b8";

  return (
    <div style={{
      display: "grid", gridTemplateColumns: "32px 1fr 160px 100px 80px",
      gap: 12, padding: "10px 16px", alignItems: "center",
      borderBottom: "1px solid #1e293b",
      background: index % 2 === 0 ? "transparent" : "#0f172a44",
    }}>
      <span style={{ color: "#475569", fontSize: 11, fontFamily: "monospace" }}>
        {String(index + 1).padStart(2, "0")}
      </span>
      <span style={{ color: "#e2e8f0", fontSize: 13, fontWeight: 500 }}>{task.title}</span>
      <span style={{ color: "#64748b", fontSize: 12 }}>{task.repo || "—"}</span>
      <span style={{ color: "#64748b", fontSize: 12 }}>{task.labels || "—"}</span>
      <Badge color={statusColor}>
        {task.status === "creating" ? <Spinner /> : null}
        {task.status}
      </Badge>
    </div>
  );
}

// ── Main App ──────────────────────────────────────────────────────────────────

export default function GitHubTaskManager() {
  const [token, setToken] = useState("");
  const [tokenOk, setTokenOk] = useState(false);
  const [authStatus, setAuthStatus] = useState(STATUS.idle);
  const [authError, setAuthError] = useState("");

  const [projects, setProjects] = useState([]);
  const [repos, setRepos] = useState([]);
  const [selectedProject, setSelectedProject] = useState(null);
  const [repoScope, setRepoScope] = useState("selected"); // "all" | "selected"
  const [selectedRepos, setSelectedRepos] = useState([]);
  const [repoSearch, setRepoSearch] = useState("");

  const [activeTab, setActiveTab] = useState("manual"); // "manual" | "excel"

  // Manual form
  const [manualTitle, setManualTitle] = useState("");
  const [manualBody, setManualBody] = useState("");
  const [manualLabels, setManualLabels] = useState("");
  const [manualAssignees, setManualAssignees] = useState("");
  const [manualRepo, setManualRepo] = useState("");
  const [manualStatus, setManualStatus] = useState(STATUS.idle);
  const [manualMsg, setManualMsg] = useState("");

  // Excel
  const [excelRows, setExcelRows] = useState([]);
  const [colMap, setColMap] = useState({ title: "", body: "", repo: "", labels: "", assignees: "" });
  const [excelCols, setExcelCols] = useState([]);
  const [tasks, setTasks] = useState([]);
  const [importing, setImporting] = useState(false);
  const [importSummary, setImportSummary] = useState(null);
  const fileRef = useRef();

  // ── Auth ──
  async function handleAuth() {
    setAuthStatus(STATUS.loading);
    setAuthError("");
    try {
      const [projs, rps] = await Promise.all([fetchProjects(token), fetchRepos(token)]);
      setProjects(projs);
      setRepos(rps);
      setTokenOk(true);
      setAuthStatus(STATUS.success);
    } catch (e) {
      setAuthError(e.message);
      setAuthStatus(STATUS.error);
    }
  }

  // ── Repo selection ──
  const toggleRepo = (fullName) => {
    setSelectedRepos(prev =>
      prev.includes(fullName) ? prev.filter(r => r !== fullName) : [...prev, fullName]
    );
  };

  const activeRepos = repoScope === "all"
    ? repos.map(r => r.full_name)
    : selectedRepos;

  const filteredRepos = repos.filter(r =>
    r.full_name.toLowerCase().includes(repoSearch.toLowerCase())
  );

  // ── Manual create ──
  async function handleManualCreate() {
    if (!manualTitle || !manualRepo || !selectedProject) {
      setManualMsg("Title, repo, and project are required.");
      return;
    }
    setManualStatus(STATUS.loading);
    setManualMsg("");
    try {
      const [owner, repo] = manualRepo.split("/");
      const issue = await createIssue(token, owner, repo, manualTitle, manualBody, manualLabels, manualAssignees);
      await addIssueToProject(token, selectedProject.id, issue.node_id);
      setManualStatus(STATUS.success);
      setManualMsg(`✓ Issue #${issue.number} created and added to "${selectedProject.title}"`);
      setManualTitle(""); setManualBody(""); setManualLabels(""); setManualAssignees("");
    } catch (e) {
      setManualStatus(STATUS.error);
      setManualMsg(`✗ ${e.message}`);
    }
  }

  // ── Excel ──
  const handleFile = useCallback((e) => {
    const file = e.target.files[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = (ev) => {
      const wb = XLSX.read(ev.target.result, { type: "binary" });
      const ws = wb.Sheets[wb.SheetNames[0]];
      const rows = XLSX.utils.sheet_to_json(ws, { defval: "" });
      setExcelRows(rows);
      const cols = rows.length > 0 ? Object.keys(rows[0]) : [];
      setExcelCols(cols);
      // Auto-detect columns
      const find = (hints) => cols.find(c => hints.some(h => c.toLowerCase().includes(h))) || "";
      setColMap({
        title: find(["title", "name", "task", "summary"]),
        body: find(["body", "description", "detail", "note"]),
        repo: find(["repo", "repository"]),
        labels: find(["label", "tag", "category"]),
        assignees: find(["assign", "owner", "member"]),
      });
      setTasks([]);
      setImportSummary(null);
    };
    reader.readAsBinaryString(file);
  }, []);

  async function handleImport() {
    if (!selectedProject) { alert("Please select a project first."); return; }
    if (!colMap.title) { alert("Please map the Title column."); return; }

    const targetRepo = repoScope === "selected" && selectedRepos.length === 1
      ? selectedRepos[0]
      : manualRepo;

    const initialTasks = excelRows.map((row, i) => ({
      id: i,
      title: row[colMap.title] || `Task ${i + 1}`,
      body: colMap.body ? row[colMap.body] : "",
      repo: colMap.repo ? row[colMap.repo] : targetRepo,
      labels: colMap.labels ? row[colMap.labels] : "",
      assignees: colMap.assignees ? row[colMap.assignees] : "",
      status: "pending",
      error: null,
    }));

    setTasks(initialTasks);
    setImporting(true);
    setImportSummary(null);

    let done = 0, errors = 0;

    for (let i = 0; i < initialTasks.length; i++) {
      const t = initialTasks[i];
      setTasks(prev => prev.map((x, idx) => idx === i ? { ...x, status: "creating" } : x));
      try {
        const repoFull = t.repo || targetRepo;
        if (!repoFull) throw new Error("No repo specified");
        const [owner, repo] = repoFull.includes("/") ? repoFull.split("/") : [repoFull, repoFull];
        const issue = await createIssue(token, owner, repo, t.title, t.body, t.labels, t.assignees);
        await addIssueToProject(token, selectedProject.id, issue.node_id);
        setTasks(prev => prev.map((x, idx) => idx === i ? { ...x, status: "done" } : x));
        done++;
      } catch (e) {
        setTasks(prev => prev.map((x, idx) => idx === i ? { ...x, status: "error", error: e.message } : x));
        errors++;
      }
    }

    setImporting(false);
    setImportSummary({ done, errors, total: initialTasks.length });
  }

  // ── Styles ──
  const s = {
    root: {
      minHeight: "100vh", background: "#060d1a",
      fontFamily: "'IBM Plex Mono', 'Fira Code', monospace",
      color: "#cbd5e1", padding: "0 0 80px",
    },
    header: {
      background: "#0a1628",
      borderBottom: "1px solid #1e3a5f",
      padding: "20px 32px",
      display: "flex", alignItems: "center", gap: 16,
    },
    logo: {
      width: 36, height: 36,
      background: "linear-gradient(135deg, #0ea5e9, #6366f1)",
      borderRadius: 8, display: "flex", alignItems: "center", justifyContent: "center",
      fontSize: 18, fontWeight: 900, color: "#fff",
    },
    title: { fontSize: 18, fontWeight: 700, color: "#f1f5f9", letterSpacing: "-0.02em" },
    sub: { fontSize: 12, color: "#475569", marginTop: 2 },
    body: { maxWidth: 1100, margin: "0 auto", padding: "32px 24px" },
    card: {
      background: "#0d1f38",
      border: "1px solid #1e3a5f",
      borderRadius: 10,
      marginBottom: 20,
      overflow: "hidden",
    },
    cardHeader: {
      padding: "14px 20px",
      borderBottom: "1px solid #1e3a5f",
      background: "#0a1628",
      display: "flex", alignItems: "center", justifyContent: "space-between",
    },
    cardTitle: { fontSize: 12, fontWeight: 700, color: "#94a3b8", letterSpacing: "0.1em", textTransform: "uppercase" },
    cardBody: { padding: 20 },
    input: {
      width: "100%", boxSizing: "border-box",
      background: "#070f1e", border: "1px solid #1e3a5f",
      borderRadius: 6, color: "#e2e8f0", padding: "10px 14px",
      fontSize: 13, fontFamily: "inherit", outline: "none",
      transition: "border-color 0.2s",
    },
    select: {
      width: "100%", background: "#070f1e", border: "1px solid #1e3a5f",
      borderRadius: 6, color: "#e2e8f0", padding: "10px 14px",
      fontSize: 13, fontFamily: "inherit", outline: "none",
    },
    btn: {
      background: "linear-gradient(135deg, #0ea5e9, #6366f1)",
      border: "none", borderRadius: 6, color: "#fff",
      padding: "10px 20px", fontSize: 13, fontWeight: 700,
      cursor: "pointer", fontFamily: "inherit", letterSpacing: "0.02em",
      transition: "opacity 0.2s",
    },
    btnGhost: {
      background: "transparent", border: "1px solid #1e3a5f",
      borderRadius: 6, color: "#94a3b8",
      padding: "10px 20px", fontSize: 13, fontWeight: 600,
      cursor: "pointer", fontFamily: "inherit",
      transition: "all 0.2s",
    },
    label: { fontSize: 11, color: "#64748b", display: "block", marginBottom: 6, letterSpacing: "0.07em", textTransform: "uppercase" },
    grid2: { display: "grid", gridTemplateColumns: "1fr 1fr", gap: 16 },
    row: { display: "flex", gap: 12, alignItems: "flex-end" },
    tab: (active) => ({
      padding: "8px 18px", fontSize: 12, fontWeight: 700, fontFamily: "inherit",
      background: active ? "#0ea5e9" : "transparent",
      color: active ? "#fff" : "#64748b",
      border: "none", cursor: "pointer", borderRadius: 5,
      letterSpacing: "0.06em", textTransform: "uppercase",
      transition: "all 0.2s",
    }),
    chip: (active) => ({
      padding: "5px 12px", fontSize: 11, fontFamily: "inherit",
      background: active ? "#0ea5e914" : "transparent",
      color: active ? "#38bdf8" : "#475569",
      border: `1px solid ${active ? "#0ea5e9" : "#1e3a5f"}`,
      borderRadius: 4, cursor: "pointer", transition: "all 0.15s",
    }),
  };

  // ── Render ──
  return (
    <div style={s.root}>
      <style>{`
        @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;600;700&display=swap');
        @keyframes spin { to { transform: rotate(360deg); } }
        input:focus { border-color: #0ea5e9 !important; }
        select:focus { border-color: #0ea5e9 !important; outline: none; }
        textarea:focus { border-color: #0ea5e9 !important; outline: none; }
        button:hover { opacity: 0.85; }
        ::-webkit-scrollbar { width: 6px; }
        ::-webkit-scrollbar-track { background: #060d1a; }
        ::-webkit-scrollbar-thumb { background: #1e3a5f; border-radius: 3px; }
      `}</style>

      {/* Header */}
      <div style={s.header}>
        <div style={s.logo}>⬡</div>
        <div>
          <div style={s.title}>GitHub Project Task Manager</div>
          <div style={s.sub}>Create & sync issues with GitHub Projects v2</div>
        </div>
        {tokenOk && (
          <div style={{ marginLeft: "auto", display: "flex", gap: 8, alignItems: "center" }}>
            <Badge color="#4ade80">● Connected</Badge>
            <Badge color="#38bdf8">{projects.length} projects</Badge>
            <Badge color="#a78bfa">{repos.length} repos</Badge>
          </div>
        )}
      </div>

      <div style={s.body}>

        {/* ── Step 1: Auth ── */}
        <div style={s.card}>
          <div style={s.cardHeader}>
            <span style={s.cardTitle}>
              {tokenOk ? "✓ " : "01 · "}Authentication
            </span>
            {tokenOk && (
              <button style={{ ...s.btnGhost, padding: "4px 12px", fontSize: 11 }}
                onClick={() => { setTokenOk(false); setToken(""); setProjects([]); setRepos([]); }}>
                Disconnect
              </button>
            )}
          </div>
          <div style={s.cardBody}>
            {!tokenOk ? (
              <div>
                <p style={{ fontSize: 12, color: "#64748b", marginTop: 0, marginBottom: 14, lineHeight: 1.7 }}>
                  Provide a GitHub Personal Access Token with <code style={{ color: "#38bdf8" }}>repo</code>,{" "}
                  <code style={{ color: "#38bdf8" }}>project</code>, and{" "}
                  <code style={{ color: "#38bdf8" }}>read:org</code> scopes.
                </p>
                <div style={s.row}>
                  <div style={{ flex: 1 }}>
                    <label style={s.label}>Personal Access Token</label>
                    <input
                      style={s.input} type="password"
                      placeholder="ghp_xxxxxxxxxxxxxxxxxxxx"
                      value={token} onChange={e => setToken(e.target.value)}
                      onKeyDown={e => e.key === "Enter" && handleAuth()}
                    />
                  </div>
                  <button style={s.btn} onClick={handleAuth} disabled={!token || authStatus === STATUS.loading}>
                    {authStatus === STATUS.loading ? <Spinner /> : "Connect →"}
                  </button>
                </div>
                {authError && (
                  <div style={{ marginTop: 12, color: "#f87171", fontSize: 12 }}>✗ {authError}</div>
                )}
              </div>
            ) : (
              <div style={{ fontSize: 12, color: "#4ade80" }}>
                Connected. {projects.length} projects and {repos.length} repositories loaded.
              </div>
            )}
          </div>
        </div>

        {tokenOk && (
          <>
            {/* ── Step 2: Project & Repo Scope ── */}
            <div style={s.card}>
              <div style={s.cardHeader}>
                <span style={s.cardTitle}>02 · Target Project & Repositories</span>
              </div>
              <div style={s.cardBody}>
                <div style={s.grid2}>
                  <div>
                    <label style={s.label}>GitHub Project</label>
                    <select
                      style={s.select}
                      value={selectedProject?.id || ""}
                      onChange={e => setSelectedProject(projects.find(p => p.id === e.target.value) || null)}
                    >
                      <option value="">— Select a project —</option>
                      {projects.map(p => (
                        <option key={p.id} value={p.id}>{p.owner} / {p.title}</option>
                      ))}
                    </select>
                    {selectedProject && (
                      <a href={selectedProject.url} target="_blank" rel="noreferrer"
                        style={{ fontSize: 11, color: "#38bdf8", display: "block", marginTop: 8 }}>
                        ↗ Open project in GitHub
                      </a>
                    )}
                  </div>
                  <div>
                    <label style={s.label}>Repository Scope</label>
                    <div style={{ display: "flex", gap: 8, marginBottom: 12 }}>
                      {["selected", "all"].map(scope => (
                        <button key={scope} style={s.chip(repoScope === scope)}
                          onClick={() => setRepoScope(scope)}>
                          {scope === "all" ? "All Repositories" : "Selected Repos"}
                        </button>
                      ))}
                    </div>
                    {repoScope === "selected" && (
                      <>
                        <input
                          style={{ ...s.input, marginBottom: 10 }}
                          placeholder="Search repositories…"
                          value={repoSearch}
                          onChange={e => setRepoSearch(e.target.value)}
                        />
                        <div style={{
                          maxHeight: 180, overflowY: "auto",
                          border: "1px solid #1e3a5f", borderRadius: 6,
                        }}>
                          {filteredRepos.slice(0, 40).map(r => (
                            <label key={r.full_name} style={{
                              display: "flex", alignItems: "center", gap: 10,
                              padding: "8px 14px", cursor: "pointer",
                              borderBottom: "1px solid #0f172a",
                              background: selectedRepos.includes(r.full_name) ? "#0ea5e908" : "transparent",
                              fontSize: 12, color: selectedRepos.includes(r.full_name) ? "#38bdf8" : "#94a3b8",
                            }}>
                              <input
                                type="checkbox"
                                checked={selectedRepos.includes(r.full_name)}
                                onChange={() => toggleRepo(r.full_name)}
                                style={{ accentColor: "#0ea5e9" }}
                              />
                              {r.full_name}
                              {r.private && <Badge color="#f59e0b">private</Badge>}
                            </label>
                          ))}
                          {filteredRepos.length === 0 && (
                            <div style={{ padding: 14, color: "#475569", fontSize: 12 }}>No repos found</div>
                          )}
                        </div>
                        {selectedRepos.length > 0 && (
                          <div style={{ marginTop: 8, fontSize: 11, color: "#64748b" }}>
                            {selectedRepos.length} repo{selectedRepos.length > 1 ? "s" : ""} selected
                          </div>
                        )}
                      </>
                    )}
                  </div>
                </div>
              </div>
            </div>

            {/* ── Step 3: Create Tasks ── */}
            <div style={s.card}>
              <div style={s.cardHeader}>
                <span style={s.cardTitle}>03 · Create Tasks</span>
                <div style={{ display: "flex", gap: 4 }}>
                  {["manual", "excel"].map(tab => (
                    <button key={tab} style={s.tab(activeTab === tab)} onClick={() => setActiveTab(tab)}>
                      {tab === "manual" ? "✏ Manual" : "⬆ Excel Import"}
                    </button>
                  ))}
                </div>
              </div>

              {activeTab === "manual" && (
                <div style={s.cardBody}>
                  <div style={{ ...s.grid2, marginBottom: 16 }}>
                    <div>
                      <label style={s.label}>Issue Title *</label>
                      <input style={s.input} placeholder="Task title…" value={manualTitle} onChange={e => setManualTitle(e.target.value)} />
                    </div>
                    <div>
                      <label style={s.label}>Repository *</label>
                      <select style={s.select} value={manualRepo} onChange={e => setManualRepo(e.target.value)}>
                        <option value="">— Select repo —</option>
                        {(repoScope === "all" ? repos : repos.filter(r => selectedRepos.includes(r.full_name))).map(r => (
                          <option key={r.full_name} value={r.full_name}>{r.full_name}</option>
                        ))}
                      </select>
                    </div>
                  </div>
                  <div style={{ marginBottom: 16 }}>
                    <label style={s.label}>Description (Markdown supported)</label>
                    <textarea
                      style={{ ...s.input, minHeight: 100, resize: "vertical" }}
                      placeholder="Issue body…"
                      value={manualBody}
                      onChange={e => setManualBody(e.target.value)}
                    />
                  </div>
                  <div style={{ ...s.grid2, marginBottom: 20 }}>
                    <div>
                      <label style={s.label}>Labels (comma-separated)</label>
                      <input style={s.input} placeholder="bug, enhancement…" value={manualLabels} onChange={e => setManualLabels(e.target.value)} />
                    </div>
                    <div>
                      <label style={s.label}>Assignees (comma-separated handles)</label>
                      <input style={s.input} placeholder="octocat, torvalds…" value={manualAssignees} onChange={e => setManualAssignees(e.target.value)} />
                    </div>
                  </div>
                  <div style={s.row}>
                    <button style={s.btn} onClick={handleManualCreate} disabled={manualStatus === STATUS.loading}>
                      {manualStatus === STATUS.loading ? <><Spinner /> Creating…</> : "Create Issue & Add to Project →"}
                    </button>
                  </div>
                  {manualMsg && (
                    <div style={{ marginTop: 14, fontSize: 12, color: manualStatus === STATUS.success ? "#4ade80" : "#f87171" }}>
                      {manualMsg}
                    </div>
                  )}
                </div>
              )}

              {activeTab === "excel" && (
                <div style={s.cardBody}>
                  {/* File upload */}
                  <div
                    style={{
                      border: "2px dashed #1e3a5f", borderRadius: 8, padding: "32px 24px",
                      textAlign: "center", cursor: "pointer", marginBottom: 24,
                      background: "#060d1a",
                      transition: "border-color 0.2s",
                    }}
                    onClick={() => fileRef.current.click()}
                    onDragOver={e => e.preventDefault()}
                    onDrop={e => { e.preventDefault(); handleFile({ target: { files: e.dataTransfer.files } }); }}
                  >
                    <div style={{ fontSize: 28, marginBottom: 10 }}>📊</div>
                    <div style={{ color: "#94a3b8", fontSize: 13 }}>
                      {excelRows.length > 0
                        ? <><span style={{ color: "#4ade80" }}>✓ {excelRows.length} rows loaded</span> — click to replace</>
                        : "Drop your Excel / CSV file here, or click to browse"
                      }
                    </div>
                    <div style={{ fontSize: 11, color: "#475569", marginTop: 6 }}>
                      .xlsx · .xls · .csv — first sheet is used
                    </div>
                    <input ref={fileRef} type="file" accept=".xlsx,.xls,.csv" style={{ display: "none" }} onChange={handleFile} />
                  </div>

                  {excelCols.length > 0 && (
                    <>
                      {/* Column mapping */}
                      <div style={{ marginBottom: 24 }}>
                        <div style={{ fontSize: 11, color: "#64748b", marginBottom: 14, letterSpacing: "0.07em", textTransform: "uppercase", fontWeight: 700 }}>
                          Map Excel Columns → GitHub Fields
                        </div>
                        <div style={{ display: "grid", gridTemplateColumns: "repeat(3, 1fr)", gap: 14 }}>
                          {[
                            { key: "title", label: "Title *" },
                            { key: "body", label: "Description" },
                            { key: "repo", label: "Repository" },
                            { key: "labels", label: "Labels" },
                            { key: "assignees", label: "Assignees" },
                          ].map(({ key, label }) => (
                            <div key={key}>
                              <label style={s.label}>{label}</label>
                              <select
                                style={s.select}
                                value={colMap[key]}
                                onChange={e => setColMap(prev => ({ ...prev, [key]: e.target.value }))}
                              >
                                <option value="">— skip —</option>
                                {excelCols.map(col => (
                                  <option key={col} value={col}>{col}</option>
                                ))}
                              </select>
                            </div>
                          ))}
                          {/* Fallback repo if not in Excel */}
                          {!colMap.repo && (
                            <div>
                              <label style={s.label}>Default Repository</label>
                              <select style={s.select} value={manualRepo} onChange={e => setManualRepo(e.target.value)}>
                                <option value="">— Select fallback repo —</option>
                                {(repoScope === "all" ? repos : repos.filter(r => selectedRepos.includes(r.full_name))).map(r => (
                                  <option key={r.full_name} value={r.full_name}>{r.full_name}</option>
                                ))}
                              </select>
                            </div>
                          )}
                        </div>
                      </div>

                      {/* Preview */}
                      <div style={{ marginBottom: 20, border: "1px solid #1e3a5f", borderRadius: 8, overflow: "hidden" }}>
                        <div style={{ padding: "10px 16px", background: "#0a1628", borderBottom: "1px solid #1e3a5f", display: "flex", justifyContent: "space-between" }}>
                          <span style={s.cardTitle}>Preview ({Math.min(excelRows.length, 5)} of {excelRows.length})</span>
                        </div>
                        <div style={{
                          display: "grid", gridTemplateColumns: "32px 1fr 160px 100px 80px",
                          gap: 12, padding: "8px 16px",
                          background: "#0a1628", borderBottom: "1px solid #1e3a5f",
                          fontSize: 10, color: "#475569", letterSpacing: "0.08em", textTransform: "uppercase",
                        }}>
                          <span>#</span><span>Title</span><span>Repo</span><span>Labels</span><span>Status</span>
                        </div>
                        {excelRows.slice(0, 5).map((row, i) => (
                          <div key={i} style={{
                            display: "grid", gridTemplateColumns: "32px 1fr 160px 100px 80px",
                            gap: 12, padding: "9px 16px",
                            borderBottom: i < 4 ? "1px solid #0f172a" : "none",
                            fontSize: 12, color: "#94a3b8",
                          }}>
                            <span style={{ color: "#475569", fontFamily: "monospace" }}>{String(i + 1).padStart(2, "0")}</span>
                            <span style={{ color: "#e2e8f0" }}>{colMap.title ? row[colMap.title] || "—" : "—"}</span>
                            <span>{colMap.repo ? row[colMap.repo] || "—" : manualRepo || "—"}</span>
                            <span>{colMap.labels ? row[colMap.labels] || "—" : "—"}</span>
                            <Badge color="#94a3b8">pending</Badge>
                          </div>
                        ))}
                      </div>

                      <div style={s.row}>
                        <button style={s.btn} onClick={handleImport} disabled={importing || !colMap.title || !selectedProject}>
                          {importing
                            ? <><Spinner /> Importing {tasks.filter(t => t.status === "done").length}/{tasks.length}…</>
                            : `Import ${excelRows.length} rows → ${selectedProject?.title || "Project"} →`
                          }
                        </button>
                        {importSummary && (
                          <div style={{ fontSize: 12 }}>
                            <Badge color="#4ade80">✓ {importSummary.done} created</Badge>
                            {importSummary.errors > 0 && <Badge color="#f87171"> ✗ {importSummary.errors} failed</Badge>}
                          </div>
                        )}
                      </div>
                    </>
                  )}
                </div>
              )}
            </div>

            {/* ── Live task log ── */}
            {tasks.length > 0 && (
              <div style={s.card}>
                <div style={s.cardHeader}>
                  <span style={s.cardTitle}>Import Log — {tasks.length} tasks</span>
                  <div style={{ display: "flex", gap: 8 }}>
                    <Badge color="#4ade80">{tasks.filter(t => t.status === "done").length} done</Badge>
                    <Badge color="#38bdf8">{tasks.filter(t => t.status === "creating").length} creating</Badge>
                    <Badge color="#f87171">{tasks.filter(t => t.status === "error").length} errors</Badge>
                    <Badge color="#94a3b8">{tasks.filter(t => t.status === "pending").length} pending</Badge>
                  </div>
                </div>
                <div style={{
                  display: "grid", gridTemplateColumns: "32px 1fr 160px 100px 80px",
                  gap: 12, padding: "8px 16px",
                  background: "#0a1628", borderBottom: "1px solid #1e3a5f",
                  fontSize: 10, color: "#475569", letterSpacing: "0.08em", textTransform: "uppercase",
                }}>
                  <span>#</span><span>Title</span><span>Repo</span><span>Labels</span><span>Status</span>
                </div>
                <div style={{ maxHeight: 400, overflowY: "auto" }}>
                  {tasks.map((t, i) => <TaskRow key={t.id} task={t} index={i} />)}
                </div>
                {tasks.some(t => t.status === "error") && (
                  <div style={{ padding: "12px 20px", borderTop: "1px solid #1e3a5f", background: "#0a1628" }}>
                    {tasks.filter(t => t.status === "error").map((t, i) => (
                      <div key={i} style={{ fontSize: 11, color: "#f87171", marginBottom: 4 }}>
                        ✗ [{t.repo}] "{t.title}" — {t.error}
                      </div>
                    ))}
                  </div>
                )}
              </div>
            )}
          </>
        )}
      </div>
    </div>
  );
}
