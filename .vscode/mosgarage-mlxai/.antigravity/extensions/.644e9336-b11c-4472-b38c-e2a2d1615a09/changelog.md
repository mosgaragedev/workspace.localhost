## **release**  [6.75.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.75.2...v6.75.3) (2026-04-30)
### 🐛 Bug Fixes

* add uuid to ESM-to-CJS transpile list and fix prettier formatting ([cc809d1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cc809d1b51b2ae713ef0227f593dcf873bcbd644)) by Tomas Vik
* handle ESM-only uuid v14 in Jest and ESLint configs ([5015fec](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5015fec551508cd7a765cf7ae713f12968215422)) by Tomas Vik

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.92.0 ([e9e1839](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e9e18397c17761da9dc580a348a2067e46ec73f1)) by GitLab Renovate Bot
* **deps:** update dependency uuid to v14 ([af7c368](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/af7c3684a891ecd8bafe4cae9504bd5f53954163)) by GitLab Renovate Bot


### Language Server Release [8.89.0...8.92.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.89.0...v8.92.0)
### [8.92.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.91.0...v8.92.0) (2026-04-30)

#### ✨ Features

* add flow versioning to proto fields ([abeed4c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/abeed4c114c48cf394c74a152b7a3d800ff448e7)) by Andrei Zubov

#### 🐛 Bug Fixes

* fix deploy failure when could not create release asset link ([b301541](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b3015416bd4abd2591368eca4df6448674d3fb93)) by Andrei Zubov
* fix ls publishing to npm ([d197554](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d197554587c9bc8f5be694b6e72d99b13a2088f0)) by Andrei Zubov

#### ⚡ Refactor

* **sandbox:** surface SandboxUnavailableError to users ([48d4cc7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/48d4cc78bae2cdf42b4a6a327b05a7f46ffbac5a)) by Karl Jamoralin

#### 🔁 Chore

* add customer consent for cli beta ([98125e0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/98125e062645e413646d0fcecd7017acf3e30f33)) by Amr Elhusseiny
* add customer consent for cli beta ([5f80968](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5f809685552975bed5d9b8c7920cf5313ba231ca)) by Tomas Vik

## **pre-release**  [6.75.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.75.1...v6.75.2) (2026-04-28)
### ⚡ Refactor

* **sandbox:** Include sandbox_worker.js in desktop packaging ([cb57ccd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cb57ccd84fd4b9938c21af69b2abfc5e3907b0ce)) by Karl Jamoralin

## **release**  [6.75.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.75.0...v6.75.1) (2026-04-22)
### 🐛 Bug Fixes

* increase Language Server startup timeout from 20s to 40s ([bd4a602](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bd4a60261890756703021d2e243fbbd727e736a4)) by Duo Developer

# **release**  [6.75.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.74.4...v6.75.0) (2026-04-21)
### ✨ Features

* Export logs to zip for debugging ([d58dee1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d58dee12bda1a8ed99cf9389e1854c3081bac30a)) by Dylan Bernardi

### 🐛 Bug Fixes

* increase Language Server startup timeout from 10s to 20s ([74927aa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/74927aa98cec483d9cfde056ada7917b078814fd)) by Tomas Vik

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.89.0 ([1131f70](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1131f703afaced209cee52e963c4c8c9eb144d47)) by GitLab Renovate Bot
* **deps:** update dependency simple-git to ^3.36.0 ([d41bb55](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d41bb55ce792f5973584a6cb178e1af167a0dce1)) by GitLab Renovate Bot


### Language Server Release [8.88.0...8.89.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.88.0...v8.89.0)
### [8.89.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.88.0...v8.89.0) (2026-04-20)

#### ✨ Features

* Add run command timeout ([ef388a9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ef388a96a6fa0d04619e933c791391356f382c91)) by Olena Horal-Koretska
* add TUI testing and recording agent skill ([68232a5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/68232a55a538b0ced080fa762ce60e630c79a72b)) by Tomas Vik
* **cli:** add log preview to feedback flow ([57f3fc5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/57f3fc5f92c80c92121cd82122d9d00eef3b81e0)) by Anna Springfield
* **cli:** enhance tui-testing skill with response detection and local build support ([1145ab6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1145ab67109af353a7214ceaee7b2c18d7c8d032)) by Tomas Vik
* **cli:** support user interruption for command running in CLI ([66fc334](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/66fc3347adf9dc78d123066b774f9a4a2cd85c6e)) by Olena Horal-Koretska
* **flow:** add interactive minimap and always-visible zoom controls ([1a639ca](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1a639ca5a67b704ec7b2e0cff6bf330e973e05cc)) by John Slaughter
* **flow:** inline merge field pill editor for local prompts ([a473c6d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/a473c6d453899b098d2feb4b6d743f5632eac9b2)) by John Slaughter
* Prewarm System Context ([c58d9c1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c58d9c149bcfa18f66581781e7204b86ccb401b7)) by Olena Horal-Koretska

#### 🐛 Bug Fixes

* **cli:** always fetch project details ([67232db](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/67232db6a408e707ff8e95d039ca9be6c5da12b0)) by Donald Cook
* **cli:** check mcp config approvedTools before prompting for approval ([ee3ee8d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ee3ee8ddd0a0b92822ba829f544017fff029ee14)) by mltheuser.gitlab
* fix the input text being lost when using history navigation ([f4813d4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f4813d41e1204c9130c69462f41c02c8a3683fa4)) by Andrei Zubov
* **mcp:** upgrade @modelcontextprotocol/sdk from ~1.17.5 to ^1.29.0 ([e376d90](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e376d90b6e1f6d561b23e30214ccae59db32b3b3)) by Tomas Vik
* **tui:** reset Dropdown selectedIndex when items change ([50de606](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/50de6064da36311867c654080b04d92b8cc4c713)) by Tomas Vik

#### ⚡ Refactor

* **cli:** slash handlers return results instead of mutating state ([9279ce2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9279ce23345e05f3164e7a41dcf1b1e8ce906940)) by Anna Springfield
* **flow:** extract flow builder to @gitlab-org/flow-builder package ([2e20556](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2e205562ebbdafe2d56e6ada8eefed3e5fb4b9e5)) by Elwyn Benson

#### 🔁 Chore

* (cli/tui) update user-facing mentions to use the full GitLab Duo name ([1a8a4e8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1a8a4e8853d86a1f3664e93ddd52d71bb92df37f)) by Uma Chandran
* add asciinema auth setup for CI and Duo Developer agent ([78bd434](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/78bd43430e413436776f283acfdf95c67790057a)) by Tomas Vik
* Refactor snowplow tracker to deduplicate ([95678b1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/95678b15925308b466832000f14b8b1d6f5c6cbd)) by Dylan Bernardi
* Rename projectId to projectPath where path is used ([47def7b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/47def7b000cb183d35a991bfcc2301d9bd376e07)) by Dylan Bernardi
* upgrade Node.js to 22.22.1 everywhere ([b1bae19](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b1bae1964ba6d36009cbe3607e77631034eff14a)) by Tomas Vik

## **pre-release**  [6.74.4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.74.3...v6.74.4) (2026-04-20)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.88.0 ([43c8fa0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/43c8fa0e96fbaf2b4f7a7cc729079541dca80af1)) by GitLab Renovate Bot
* **deps:** update dependency to ^9.3.1 ([b7c76e2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b7c76e2afbe587faf4b77e23efe013bb5611c42c)) by GitLab Renovate Bot


### Language Server Release [8.87.0...8.88.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.87.0...v8.88.0)
### [8.88.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.87.0...v8.88.0) (2026-04-17)

#### ✨ Features

* add ClassicChatLicenseCheck for Duo Core chat gating ([08ccb0b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/08ccb0bb66a2028057cfd42ad8abbf39d0660861)) by Donald Cook
* **cli:** add --settings-tui flag and /settings slash command stub ([8bc4efc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8bc4efc9dc9bffa203c510671243ffedebda0f24)) by Tomas Vik
* **cli:** implement /exit slash command ([0d8ede9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/0d8ede97d89cb2629de781de0df296ff717217cb)) by mltheuser.gitlab
* **duo-agent-platform-v2:** add agent selector ([9666b59](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9666b59bbd647e714af4ba804135fd3885a2ea4a)) by Juhee Lee
* **tui:** auto-detect terminal dark/light theme ([c1de17f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c1de17f947a015e54858c3be48a514e05eb00afd)) by Elwyn Benson

#### 🐛 Bug Fixes

* **sandbox:** add worker entry point to desktop esbuild build ([8977f7b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8977f7bf424c9dfa35783a410aaea07fd4d69433)) by Karl Jamoralin

#### 📝 Documentation

* **cli:** document beta consent ([bdecd88](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/bdecd88b67d66f053d32dc3981ab9b5655ce3a40)) by Tomas Vik
* update MR template for AI ([773cc96](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/773cc96969882cda6df5e14914859421d8910a3b)) by Tomas Vik

#### ⚡ Refactor

* move test guidelines from AGENTS.md to testing skill ([aa79016](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/aa79016d398dde97be66469f5e9ff0ec6b4b5bcc)) by Tomas Vik
* **sandbox:** bump srt to 0.0.49 and wire allowRead through config ([398894c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/398894cc318b8930ce952bde36be4be9a2e4365e)) by Karl Jamoralin

#### 🔁 Chore

* add customer consent for Duo CLI beta ([c45b1ab](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c45b1ab8db7895d19b14e0d9855208175e26da1d)) by Amr Elhusseiny
* add glab to mise config ([f59c31f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f59c31f27f09e588558630b6a5e40eac252c6435)) by Andrei Zubov
* address review feedback ([185171c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/185171cd232ab4c2a9ded04494299a4438c3be87)) by Andrei Zubov
* **cli:** add glab dev scripts ([5410efb](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5410efbd73735a5de8dfefc67e2dfc70100126a8)) by Andrei Zubov
* unify duo compilation scripts ([e7cdb55](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e7cdb5546bdebcbb91500cbecb9678eb0f2db507)) by Andrei Zubov
* update GLAB_DUO_CLI_PATH env var to match glab implementation ([40ae1dd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/40ae1dd83bd3e34c421b36d0fdb2c2286cbb929d)) by Andrei Zubov

## **release**  [6.74.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.74.2...v6.74.3) (2026-04-17)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.87.0 ([f5567e8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f5567e8f2b0fa83839aac1e6ef7e6cb44f0df009)) by GitLab Renovate Bot


### Language Server Release [8.82.0...8.87.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.82.0...v8.87.0)
### [8.83.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.82.0...v8.83.0) (2026-04-07)

#### ✨ Features

* **cli:** allow list for instances participating in beta ([ae7676c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ae7676c35766b346db58fb6c6cf62a092bbc14a4)) by Tomas Vik
* **duo-agent-platform-v2:** add model selector ([b132004](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b1320040916f7d3650d48ddaf09c02d085e7d8a6)) by Juhee Lee
* **flow:** responsive layout, unified toolbar, right-docked properties panel, status bar ([8b07768](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8b0776866e70146b21a536b6647073dd57bf9b3e)) by John Slaughter
* **skills:** Support global Agent Skills from user home directory ([69b5148](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/69b5148499431d4c6c48e4862751ad1c72b0af0a)) by Karl Jamoralin

#### 🐛 Bug Fixes

* **dap:** remove server version checking in session-based tool approval ([657c189](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/657c189181cb286ba42533f9f34055b2ec5caf04)) by Anna Springfield

#### 🔁 Chore

* Add telemetry for tool approvals ([e531b15](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e531b155bfbc92fb986c29ac4732ac35791e946b)) by Dylan Bernardi


### [8.84.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.83.0...v8.84.0) (2026-04-09)

#### ⚠ BREAKING CHANGES

* The --connection-type CLI flag has been removed.

#### ✨ Features

* **cli:** reformat thread conversation messages ([1298dc7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1298dc77c2ab48220aa830cb8cf481a62373e849)) by Austin Regnery

#### 🐛 Bug Fixes

* **cli:** propagate baseUrl to ConfigService for correct Snowplow telemetry ([3d998a9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3d998a960e4da5cbe3ad79d2811b4302615f5875)) by Elwyn Benson
* **cli:** trigger tab to switch agent only on press in xterm.js ([8c1cf50](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8c1cf50232af851a100c01d455acd8fbe631fc2b)) by Anna Springfield
* replace self-referential imports with relative paths ([998456d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/998456d46531d400f9ff55060ec88cc906751275)) by Elwyn Benson

#### ⚡ Refactor

* move createFallbackService from workflow-executor to @gitlab-org/core ([f3aa2cc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f3aa2cc042312f4bb67d8ff26e370bb4e7b318b2)) by Elwyn Benson
* **sandbox:** add SandboxedActionExecutor and SandboxAwareActionExecutorFactory ([#2068](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/issues/2068)) ([79fac6e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/79fac6ee2716ee22e3cb24bdf8a32dc377a60204)) by Karl Jamoralin

#### 🔁 Chore

* add customer consent for cli beta ([0af5911](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/0af5911e8bd5b585997b66dff88becf0e31f98b6)) by Tomas Vik
* add missing workspace dependencies across 16 packages ([ee459fd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ee459fdee1c71ed689c3021ce5f928a23e4121de)) by Elwyn Benson
* **cli:** Add SKIP_RIPGREP_BUNDLE env var to skip ripgrep bundling ([c7156b3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c7156b363d80faf5566e93320624e7990d26448f)) by Andrew Fontaine
* Remove `gRPC` connection option ([2a076ce](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2a076ce3e6b5e996e09e9235d248c5542148a8d3)) by Olena Horal-Koretska
* remove demo packages lib-pkg-1 and lib-pkg-2 ([c92c926](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c92c926c94c72eeecc87888c1cae71e827658e3b)) by Elwyn Benson


### [8.85.0](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/compare/v8.84.0...v8.85.0) (2026-04-10)

#### ✨ Features

* update Agentic Chat input placeholders ([2a42de8](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/commit/2a42de86b1ddd6b4a99475765e4ae18ebcb4a955)) by Olena Horal-Koretska

#### 🐛 Bug Fixes

* add back token revoke call ([9bbf666](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/commit/9bbf6663ce687a522710ce25ab6c12d1af25c0fb)) by Halil Coban
* allow cli-e2e-test to run in forked projects ([8348d91](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/commit/8348d91981294a39ecc7a96f087437e7e103867b)) by Tristan Read
* **flow:** remove deprecated model config from prompt definitions ([40016a4](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/commit/40016a4726e3f27ff5044b452f015cafc4732b22)) by John Slaughter
* **logging:** add browser entry point to prevent DI framework from bundling in webview ([97d2a0e](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/commit/97d2a0e84da505aa73782feca659e14dbc08509f)) by John Slaughter
* move token cleanup to finally block ([2608307](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/commit/260830718e535944baee88f492f6de1988de1ee9)) by Halil Coban
* revoke tokens in headless mode ([d952866](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/commit/d952866641440a419a89fec1c7c5839590956780)) by Elwyn Benson

#### ⚡ Refactor

* multi-entry package structure and bundler resolution ([0655ee5](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/commit/0655ee5b6d507d58873ebbc04767bba54d5b9491)) by Elwyn Benson
* remove dead code after refactor ([1812be9](https://gitlab.com/gitlab-org/security/editor-extensions/gitlab-lsp/commit/1812be97c2798a7dd81ed017ae99b452ac9d51d1)) by Elwyn Benson


### [8.85.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.85.0...v8.85.1) (2026-04-10)

#### 🔁 Chore

* add empty commit to trigger a release ([19b073c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/19b073cf0e280e236bb228dc45b2b2cf44e380f4)) by Tomas Vik


### [8.86.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.85.1...v8.86.0) (2026-04-10)

#### ✨ Features

* Send project_id on duo_workflows direct_access requests ([3e0f77a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3e0f77a8dc4fe24a2fc9900f917c385d3d858e1c)) by Dylan Bernardi

#### 🐛 Bug Fixes

* reintroduce connection-type option to headles binary ([1722977](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1722977391cc64034f5345124be560f6dd7a35ae)) by Mikołaj Wawrzyniak


### [8.87.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.86.0...v8.87.0) (2026-04-16)

#### ✨ Features

* Add green left border to tool call components ([25de3d7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/25de3d7c6ef02e22677d2916d6c09598bd6907e4)) by Tomas Vik
* **chat:** hide non-selectable agents from chat agent picker ([6fec7af](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6fec7afc8241798493443550e8f021d8ed16aef6)) by Eduardo Bonet
* **chat:** Show tool approval for session as turned off ([d1ed893](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d1ed893571c13dcfabbdee117ecd46acd4c244c6)) by Dylan Bernardi
* **cli:** add theme-aware background highlight to user messages ([e1acbac](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e1acbac75daab85ccdf5d6b7e4336a47f070949e)) by aregnery
* **flow:** fit canvas to nodes on load ([f988ee7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f988ee7cae74eff73fee04e95eaba8f3cd8bcd44)) by John Slaughter

#### 🐛 Bug Fixes

* **cli:** don't show config screen when running through glab ([7905733](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/790573389792e4f02db78bea9632858728792232)) by Tomas Vik
* **code-suggestions:** handle 422 error when default namespace not selected ([9f061f3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9f061f3fc32640ee1b628d9737020843168b56f4)) by Mohammed Osumah
* improve mcp initialisation performance for DAP ([35a377d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/35a377ddb31197c5d04dbfb01a33b34472b6885e)) by Andrei Zubov
* show credential-source-specific hints on token validation failure ([a9dbcc2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/a9dbcc22bd3c68c1044fc1e2d26eda33adc71c9d)) by Tomas Vik
* **tui:** handle raw control bytes in Kitty protocol parser ([d40fdb4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d40fdb4e7b2d643f3883be43d375cdbde621a32a)) by mltheuser.gitlab

#### 📝 Documentation

* **sandbox:** add AGENTS.md for lib_sandbox package ([cc29521](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/cc29521b6d1b8f3932cd782fa3fd46ffb244e807)) by Karl Jamoralin

#### ⚡ Refactor

* **flow:** manage history placeholder at converter boundary ([9dc90ec](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9dc90ece134f60c155c2068bba29f47daba91d04)) by John Slaughter
* **sandbox:** Implement worker entry point and action handlers ([b3b8c72](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b3b8c72078468d9e3388fb995875cee13c00d7b4)) by Karl Jamoralin
* **sandbox:** make config types self-documenting and tighten AGENTS.md ([1245992](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1245992c44edeacc16bba8a0bfae013ea6ec321e)) by Karl Jamoralin
* switch workspace packages from lodash to lodash-es ([24a16b7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/24a16b73eacd58c11ac47fe2d91049200c53c54f)) by Elwyn Benson

#### 🔁 Chore

* add customer consent for cli beta ([683e573](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/683e5738d0b4197844fb182a83dfb168ef0f319a)) by Tomas Vik
* **duo-agent-platform-v2:** enable project selector in dev mode ([1963201](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/196320179b3a329a00367b730e5f0987d86c7604)) by Juhee Lee
* npm audit fix ([1f8255e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1f8255efa63216d26bc34f247d0b9baed46e2cc3)) by Tomas Vik
* reuse mcp prewarm method in duo cli ([b8df2b5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b8df2b5fce755dffc748277aa44ebac375362761)) by Andrei Zubov
* setup for Duo Developer flow ([36d5962](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/36d5962ad9e8b89cd812901aaf8f382e38cf1082)) by Tomas Vik

## **pre-release**  [6.74.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.74.1...v6.74.2) (2026-04-16)
### 🔁 Chore

* **deps:** update dependency simple-git to ^3.35.2 ([fd998db](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fd998db6af06889be0f3655f472f89500a5925d8)) by GitLab Renovate Bot

## **pre-release**  [6.74.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.74.0...v6.74.1) (2026-04-13)
### 🔁 Chore

* **deps:** update dependency lodash to ^4.18.1 ([511e03d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/511e03dfb0c2257dd3c2b0d9c071d05a2d1ced6d)) by GitLab Renovate Bot

# **pre-release**  [6.74.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.73.1...v6.74.0) (2026-04-10)
### ✨ Features

* support missing default namespace state in status bar ([c79b42e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c79b42e45fbc69de2928ba9bd3171d559cdc0a99)) by Mohammed Osumah

### 📝 Documentation

* update readme to simplify and reflect docs refactor ([b26eba3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b26eba342f0590d0600f5d44d21331117b08ed3f)) by Uma Chandran

### 🔁 Chore

* **deps:** update dependency @snowplow/tracker-core to v4.7.0 ([c364885](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c3648858411ebcc669c51d10d3f3b0d92b674436)) by GitLab Renovate Bot
* **deps:** update dependency ts-jest to ^29.4.9 ([25f883e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/25f883ee6e32642b2e26ad9ee324694318e01d7c)) by GitLab Renovate Bot

## **pre-release**  [6.73.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.73.0...v6.73.1) (2026-04-03)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.82.0 ([a770df5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a770df58d1197339c14e74eb920678d20fd8552a)) by GitLab Renovate Bot


### Language Server Release [8.81.0...8.82.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.81.0...v8.82.0)
### [8.82.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.81.0...v8.82.0) (2026-04-02)

#### ✨ Features

* **cli:** HITL plan approval support for headless mode ([6e74c35](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6e74c3581e8365a8e9c679d577c24b70ebefc3f8)) by Elwyn Benson
* **cli:** improve input bar with agent-colored borders and session title ([2d489b3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2d489b3d81fc2320afc9209d2ac178a6663819da)) by Austin Regnery
* **flow:** fix workflow execution metadata, input forwarding, and ui_log_events derivation ([44e05da](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/44e05da751c8893458522a618dc6359ea0598def)) by John Slaughter

#### 🐛 Bug Fixes

* **cli:** prevent visual duplication during terminal resize ([2709106](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2709106018b175adfa17d43238209440994e9c02)) by aregnery
* **mcp:** support spaces and special characters in server names via slug mapping ([3c8b397](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3c8b397b033422206e666c5665f58d629dc3aa4b)) by John Slaughter

#### 📝 Documentation

* update Duo CLI readme to reflect beta status ([aa511a3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/aa511a3c8cff28a2723d0921709a151c7c72b04c)) by Uma Chandran

#### 🔁 Chore

* **caps:** Remove excessive logging for capabilities ([c3481c3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c3481c3a31fe219dd78d5cb579570e52ab594b0c)) by Dylan Bernardi

# **pre-release**  [6.73.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.72.0...v6.73.0) (2026-04-02)
### ✨ Features

* Interrupt running command when LS notifies to do so ([867641e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/867641eeb0670606f98c8a148f0af7ad9f78c2d7)) by Olena Horal-Koretska

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.81.0 ([d15701b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d15701b6836bdef666d87c5408b8d4adc7d62a5e)) by GitLab Renovate Bot


### Language Server Release [8.80.0...8.81.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.80.0...v8.81.0)
### [8.81.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.80.0...v8.81.0) (2026-04-01)

#### ✨ Features

* add client type headers to LS api client ([246fd9a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/246fd9af1b3ec759adf32095c6c00150af913ed1)) by Andrei Zubov
* Cancel command running in IDE terminal ([8032d5e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8032d5e60e616cedb126c129b0a39cb88114bd9e)) by Olena Horal-Koretska
* **cli:** Add skills slash command support to CLI ([1563044](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1563044be9bba7157f99bc028c71a1b97af5eae4)) by Erran Carey
* **cli:** gate startup on group beta/experimental features setting ([fb7a486](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/fb7a4860c92fec0a8bf117617bcc52adfb030836)) by Elwyn Benson
* **flow:** add variable discovery and autocomplete for agent and AI task nodes ([96417d0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/96417d001baebc4bc8ba3459318a369e329f48c1)) by John Slaughter
* **mcp:** Enable config management for tool approvals ([9b4b6b0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9b4b6b0b8e1e811bf3c16661ff1bdaec595dcf31)) by Dylan Bernardi

#### 🐛 Bug Fixes

* **cli:** return null for getCommitHash on empty commit history ([458b0f4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/458b0f41f6be7e39df7de638dc222e2fe767a0f5)) by Javier Gonzalez
* resolve symlink path mismatch in assertValidRepoFile ([1a5fb04](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1a5fb04100833378777a5b000a3670f452364703)) by Norman Debald
* use rootFsPath to set workspaceFolderPath ([89735a2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/89735a2a859c5dcaf18e67ac9c23673fa219a97e)) by Juhee Lee

#### 🔁 Chore

* disable indent eslint rule clashing with prettier ([e336cee](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e336cee8b57432e8bd1e79fe13d42aca1366f8cf)) by Juhee Lee

# **release**  [6.72.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.15...v6.72.0) (2026-03-30)
### ✨ Features

* Remove "Duo Connection Type" setting ([d5691f9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d5691f96a30e9f6077b539a5304550a0febf93a8)) by Olena Horal-Koretska

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.80.0 ([774902c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/774902c78355637ace365a177dc3bc1f64c16d53)) by GitLab Renovate Bot
* **deps:** update dependency simple-git to ^3.33.0 ([9af4e57](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9af4e5775031ffd60f07ea4aaf12c988c3d00d1d)) by GitLab Renovate Bot


### Language Server Release [8.79.0...8.80.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.79.0...v8.80.0)
### [8.80.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.79.0...v8.80.0) (2026-03-27)

#### ✨ Features

* Allow users to interrupt running command ([30addc9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/30addc96583f203d7629708cf161d0e8053d91d8)) by Olena Horal-Koretska
* **cli:** add feedback slash command ([9d4deb3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9d4deb3e0dfa63cb40b00f3cb8e2ec293a104baa)) by Anna Springfield
* **cli:** add session-scoped tool approval persistence ([cf879f3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/cf879f35e4f9531c14eda0965a933fc7bfad3dbf)) by Anna Springfield
* **duo-agent-platform-v2:** pass selected project to workflow metadata ([5cd5e28](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5cd5e28cb811306422265c06c7f6b268eaaed1cb)) by Juhee Lee
* **flow:** add dagre-based automatic node layout utility ([1b4fa45](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1b4fa45cf690e250aeb29ba951cfdad47b0b8b08)) by John Slaughter
* **flow:** add themed graph action bar with canvas controls and coming soon placeholders ([6442fab](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6442fab8e585fca4a7e26af73a2f218a28277d42)) by John Slaughter

#### 🐛 Bug Fixes

* **cli:** resolve symlinks in --cwd path to match git repo root ([84c7a4d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/84c7a4d95a7a37ac9c550ce715f607f2a65cc90d)) by Elwyn Benson
* disable DAP when Duo features are disabled ([b3629c8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b3629c80a0fc16184bd59a282d71e5acbeb6c88c)) by Laura Ionel
* Reduce logging, call direct_access on new session ([e867f4e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e867f4e18db491ea2bae9ffa45fecd181b949a26)) by Dylan Bernardi
* send empty goal on workflow retry to prevent duplicate responses ([aa4e906](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/aa4e90615650a0b77d187e7bfc6b9fc5815f0ddf)) by Elwyn Benson

#### ⚡ Refactor

* **cli:** attach agent mode to tool approval actions ([e0f11ab](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e0f11ab959b04e1bad6c297eaa12cf7c7ec661fe)) by Elwyn Benson
* migrate src/node and src/browser to workspace packages ([58e7a80](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/58e7a80d022cce5f1bf69a10b52eba60384f4307)) by Tomas Vik
* Remove SlashCommandAction enum, use plain strings ([32fe841](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/32fe841a3ada06244c0ebbead68cf83f67d07e47)) by Tomas Vik
* **workflow:** extract tool approval utilities ([dd9093d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/dd9093d2bcbc930b71850d318d18026d59790b9d)) by Anna Springfield

#### 🔁 Chore

* bundle "ripgrep" binary into CLI executable ([5af8184](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5af81841a354ade0d329acaca09b38b12709f52a)) by Olena Horal-Koretska
* Bundle "ripgrep" with SEA builds ([d1abd78](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d1abd7854f7d8e5468839186982e290fb7c68bbb)) by Olena Horal-Koretska
* Cache ripgrep binaries in CI ([e82b90a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e82b90ac0a7d206fa85dc0f571a4d8fbefeddacf)) by Olena Horal-Koretska
* **deps:** update dependency @gitlab/duo-ui to ^15.16.0 ([601d8f7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/601d8f7272c499b812c8d224c6359d01ac840136)) by Olena Horal-Koretska
* **duo-agent-platform-v2:** fix browser SyntaxError ([7087fb9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/7087fb92ff436d6d131dbdb5153d3f4ddf0fb984)) by Juhee Lee
* **sandbox:** add worker RPC protocol, WorkerManager, and client sandbox setting ([#2068](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/issues/2068)) ([6108644](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/61086442937f7d240d97fb09ecbe98557f47eb70)) by Karl Jamoralin

## **pre-release**  [6.71.15](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.14...v6.71.15) (2026-03-27)
### 🔁 Chore

* fix the DAP reference in the namespace description ([b9197a5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b9197a563552401bf705450a9a135a604bde8c28)) by Uma Chandran

## **pre-release**  [6.71.14](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.13...v6.71.14) (2026-03-26)
### 🔁 Chore

* **deps:** update dependency graphql to ^16.13.2 ([04e9f65](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/04e9f65a78963cef52ade5d1749d2d86c3964242)) by GitLab Renovate Bot

## **pre-release**  [6.71.13](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.12...v6.71.13) (2026-03-25)
### 🔁 Chore

* **deps:** update dependency @semantic-release/gitlab to ^13.3.2 ([5681e64](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5681e64df0bfc120724cc7d437dd4e60045f6444)) by GitLab Renovate Bot
* update agentic and classic chat references ([551fd57](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/551fd57c8334ab6a470e2d332728d25211b58db0)) by Uma Chandran

## **pre-release**  [6.71.12](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.11...v6.71.12) (2026-03-24)
### ⚡ Refactor

* import supportedLanguages from main package entry point ([96990e7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/96990e7d68e4a325c60b7bc08858568518aa8917)) by Tomas Vik


### Language Server Release [8.78.0...8.79.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.78.0...v8.79.0)
### [8.79.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.78.0...v8.79.0) (2026-03-23)

#### ✨ Features

* **cli:** adapt Duo CLI behavior for glab distribution ([54dc351](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/54dc351b76963cee34a5a322d58a88c51c39a301)) by Tomas Vik
* **cli:** add terminal progress reporting via OSC 9;4 escape sequences ([809a6dc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/809a6dc8be2b49d9f98c9ec6e93daa9c549d72e6)) by Elwyn Benson
* **dap:** Send tools to Approve for Session ([4dfb1aa](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/4dfb1aa88b1e14ca8805313664fe9ea4acdeb3ed)) by Dylan Bernardi
* **duo-agent-platform-v2:** add project selector ([f0fcb0c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f0fcb0c21bc1cfb52b217d9e2c72fafb55f9149d)) by Juhee Lee
* **duo-agent-platform:** stream workflow events to DAP v2 UI ([c8a4935](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c8a4935d9ce2853107c070f05e1f7711642acb47)) by Tristan Read
* **sandbox:** Define sandbox configuration schema ([4d4d391](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/4d4d391775032913cb69ea1a581f364acf7f44af)) by Karl Jamoralin
* **telemetry:** update snowplow events routing based on instance info ([3f3c6f5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3f3c6f55f1a02398b3d62130b14fb703c4888e14)) by Mohammed Osumah
* **webview:** add reactive gitlab connection state ([cc1cc82](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/cc1cc82d4ad13a64f16880a3cebb8130e90bd6bc)) by John Slaughter

#### 🐛 Bug Fixes

* **cli:** add --minify to bun binary compilation ([5f4bc94](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5f4bc94695aaf28c3be300970e217f18592a08be)) by Andrew Fontaine
* **cli:** persist plan mode flow config across tool approval requests ([eba15ad](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/eba15ad8e190633a4f4d1c837e9fc110666e825f)) by Elwyn Benson
* emit WorkspaceFilesEvent when workspace folder is removed ([c721d59](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c721d590edc33bbdec522a38101246a3e309ff12)) by Juhee Lee
* Reduce feature state notifications in logs ([d471b06](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d471b06ebf5ad5a3d16670776fc2fe33acccaf5b)) by Dylan Bernardi
* remove stale lib-agentic-duo-chat dependency from lib_config ([3a5515a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3a5515af1013548ea7b5cc545039ca86e8b834b8)) by Tomas Vik
* switched run command string to args ([b0b16fe](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b0b16fe369dc0366da15fdce5689a8a8587cb615)) by Donald Cook

#### ⚡ Refactor

* **cli:** extract prompt history management into PromptHistoryController ([3fefbbe](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3fefbbe165f80c32aa91062ae06819018cd9dd8e)) by Elwyn Benson
* **cli:** replace slash command callbacks with CommandComponentRegistry ([591c964](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/591c9647d73dbb2975d0d22fdd487d1c9eefe3cb)) by Anna Springfield
* extract AsyncIterator test helpers into @gitlab-org/test-utils ([ebfe5a2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ebfe5a2bb3886a8a1a6825437a099f5ff6a91039)) by Elwyn Benson
* migrate src/common to workspace package @gitlab-org/legacy-common ([a4fbcd8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/a4fbcd8a7dc2ef5042ef43aa5191af2bdecf1705)) by Tomas Vik
* **workflow:** extract ActionExecutor abstraction (part 1 of [#2068](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/issues/2068)) ([573b350](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/573b35058d7c3aa65afb110c641e284429b44c43)) by Karl Jamoralin

#### 🔁 Chore

* **cli:** allow SUPPORTED_TARGETS to be set externally ([64b6274](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/64b627445dc431c51b686aeb7418ea0fe0002625)) by Andrew Fontaine
* hide unchanged files from prettier output in fix-changed.sh ([6a85ee5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6a85ee56215469bdffda79853e459b2c82a0ee2d)) by Tomas Vik
* remove .tool-versions in favor of mise/config.toml ([1c90544](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1c90544d817f9843d946a3c21f251f8212aa56cf)) by Tomas Vik
* updates references to agentic and classic chat in copy ([1d46d33](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1d46d33f822ffd979a80c9210373c63c0bae29dc)) by Uma Chandran

## **pre-release**  [6.71.11](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.10...v6.71.11) (2026-03-19)
### 🔁 Chore

* **ci:** remove e2e test metric recording ([d444c09](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d444c096af81f507771818ac6d1f5f5d5efa3ffc)) by Jay McCure
* **deps:** update dependency @snowplow/tracker-core to v4.6.9 ([463a55f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/463a55f80c8a1dece9a17f9d5f7a40b41324941d)) by GitLab Renovate Bot

## **pre-release**  [6.71.10](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.9...v6.71.10) (2026-03-18)
### 📝 Documentation

* update GitLab maintained versions documentation ([1f8c4e8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1f8c4e81e4f7856a7d9b0f1a600c9abc948403e9)) by Donald Cook

### 🔁 Chore

* Copy `ripgrep` from LS build ([6f2abf0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6f2abf093f94220405413daa8af5f183451b2a41)) by Olena Horal-Koretska
* **deps:** update dependency @babel/preset-env to ^7.29.2 ([57de713](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/57de713f5d0a1a8e4bfcb6ce95d7dc25bf7db052)) by GitLab Renovate Bot
* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.78.0 ([6c886c7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6c886c7dac1820d8a5d821204f8fbe1ea8f11a59)) by GitLab Renovate Bot
* **deps:** update dependency dayjs to ^1.11.20 ([d86e646](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d86e6461aea04832b54bdf8f0fb8f2dc72659076)) by GitLab Renovate Bot


### Language Server Release [8.77.0...8.78.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.77.0...v8.78.0)
### [8.78.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.77.0...v8.78.0) (2026-03-13)

#### ✨ Features

* Package `ripgrep` with the LS ([8479f5a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8479f5ad55b9c2e46f7412f01976dac1da25ec75)) by Olena Horal-Koretska

#### 🐛 Bug Fixes

* **cli:** use key.sequence for character insertion to fix Shift+numeric keys ([df2daff](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/df2daff20bf2037a2c4b582aba9cd1ad8807da3a)) by Denys Mishunov
* **tui:** wrap long diff lines instead of overflowing terminal ([8a1682e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8a1682e32ab69e1b786f34c21b88e9d990b592df)) by Elwyn Benson

#### 📝 Documentation

* revise Duo CLI documentation for development focus ([e5e3f21](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e5e3f21137437ae7b2e317692e75089b1159ae27)) by Tomas Vik

#### ⚡ Refactor

* **cli:** avoid unnecessary tool approval round trips to server ([08f22d3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/08f22d32677f245483b0151ee4e7e7e43c1bafe6)) by Elwyn Benson
* **skills:** Add yaml parsing and zod schema validation ([eb2a3df](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/eb2a3df38db52f8717f98ce1e8ecb996b04c20d7)) by Erran Carey

## **release**  [6.71.9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.8...v6.71.9) (2026-03-13)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.77.0 ([b4e4e9b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b4e4e9b4bbb7ae4847cc5c4c80db6c454bc32051)) by GitLab Renovate Bot


### Language Server Release [8.76.0...8.77.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.76.0...v8.77.0)
### [8.77.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.76.0...v8.77.0) (2026-03-13)

#### ✨ Features

* Add support for chunk reading to `read_file` tool ([9aa528c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9aa528c252b20a30895523f215e243d47a64a472)) by Olena Horal-Koretska
* **cli:** /copy command copies last Duo message to clipboard ([ef78c22](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ef78c2285e5b1cb2cd743f4fc3e3e89006d05e7b)) by Tomas Vik
* **cli:** add "plan" mode ([2971e3c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2971e3c98e7784b3088e7f1e9ae74cc061940e2f)) by Elwyn Benson
* **cli:** Add langsmithTrace support for distributed tracing in workflow clients ([042c54c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/042c54c1f25484f27082489204cf382ba0ba6cb2)) by Bruno Cardoso
* **cli:** add optional rejection reason to tool approval flow ([7188cf3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/7188cf3bcdfa8988fd924689e106f15d4be1cfb7)) by Elwyn Benson
* **cli:** log run config consistently ([5c23f7f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5c23f7f10bf46e574786a40ad1756890232f3793)) by Elwyn Benson
* **cli:** track command type for duo CLI ([e445974](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e4459742d86987f0e4f7ec6cb475b21f4d67c0be)) by Andrei Zubov
* Enable chat on connection loss ([436a328](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/436a328f22ab2a4fbd5a770d78e798e9d1101dd6)) by Olena Horal-Koretska
* **flow:** decouple node identity + friendly display labels ([280fb2d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/280fb2d2af7ea14d53131e1dd0b731d03d2b6631)) by John Slaughter
* Handle chat errors ([40aa619](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/40aa61951adebb57f683cec57384719fa7fe4b7f)) by Olena Horal-Koretska
* **sandbox:** integrate srt SDK and add dependency detection ([e069a6f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e069a6fe0f9f9b1283a0bf1f3c11323d4b0f5ba1)) by Karl Jamoralin
* Use `ripgrep` for local search tool ([fac3db8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/fac3db89ce1e56a7074f7c15335d089a7bcbc7e6)) by Olena Horal-Koretska

#### 🐛 Bug Fixes

* **cli:** submit on enter for slash commands ([52c04bb](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/52c04bb8a0206eebe3bb87e3b2b28e7f9f07eee3)) by Anna Springfield
* resolve broken artifact link in publish-duo-cli-artifact job ([d455dfd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d455dfd90a87f65f83124bdea442ed86a6268b20)) by Olena Horal-Koretska

#### ⚡ Refactor

* **cli:** add onActiveSessionChanged callback to SessionManager ([86cf959](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/86cf9594e0cbf6c95b428fb6e2c2d24ca728b88e)) by Elwyn Benson
* **cli:** change activeSessionChanged to event emitter ([f14f011](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f14f0114d5f83fdbad611448184295bc479e7bfe)) by Elwyn Benson
* **cli:** help dialog naming & keys tweaks ([661e21c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/661e21c158394bad82b764d45106f0334bc8a0d1)) by Anna Springfield
* **cli:** improve dropdown documentation and add defensive check ([b210341](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b210341f8c2820bf091e12258e41c3f122ca4635)) by Anna Springfield
* **cli:** introduce page object model for e2e tests ([14e309c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/14e309cfcfe00ac7bca1300a59dace1c35f17d29)) by Elwyn Benson

#### ✅ Tests

* **cli:** add e2e tests for escape cancel, clean exit, and GITLAB_OAUTH_TOKEN auth ([1722a0c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1722a0cce9c80f942b8edbb1247724af2cffb033)) by Elwyn Benson
* **cli:** add e2e tests for prompt history navigation ([238af3e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/238af3ea0e0f5ae60ffcd4bc9ed8aed3d620c933)) by Elwyn Benson
* **cli:** add e2e tests for tool approval flow ([9243eb3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9243eb3d91a1599ed16d9c0657caa8c993e4d9bd)) by Elwyn Benson

#### 🔁 Chore

* default to user GraphQL namespace ([b3f05b4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b3f05b42bc7bebfdaeb975d60fb85526cccfc94c)) by Laura Ionel
* filter out stub setup to avoid redundant WebviewController ([a3c55a2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/a3c55a2b41c2ec9ae529b873c469b40657bab7b3)) by Juhee Lee

## **release**  [6.71.8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.7...v6.71.8) (2026-03-13)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.76.0 ([55c69b4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/55c69b47e960f2507692ebe6c0f0295d235872d2)) by GitLab Renovate Bot


### Language Server Release [8.75.0...8.76.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.75.0...v8.76.0)
### [8.76.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.75.0...v8.76.0) (2026-03-10)

#### ✨ Features

* add GraphQL default namespace fallback ([266d9c1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/266d9c133518db5b511b071a6b706e165de854f9)) by Laura Ionel
* **cli:** add /help slash command for interactive session ([ac06016](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ac060164ac8fdfc0d3c5c1f4fe4da1ffc8f4fa84)) by Anna Springfield
* **cli:** add model selection slash command ([acc3d38](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/acc3d388c7980bc1ab67acc72e9b109877bc2060)) by Andrei Zubov
* **cli:** expose the token source in TUI and error messages ([7c185c6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/7c185c69cb7c1b3fcec851cdceaae021886f5aac)) by Tomas Vik
* **flow:** schema-driven tool configuration with parameter bindings ([6d5f87c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6d5f87c0e8be188126a445e70b599c928c86284c)) by John Slaughter
* Use aiChatIncludedProjects to fetch available repos for /include command ([9b519a3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9b519a3346a809be5f37a8726d4d5298a2909276)) by Anna Springfield

#### 🐛 Bug Fixes

* add project_id, namespace_id, root_namespace_id as query params in WebSocket URL ([a9d4342](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/a9d434264022d4ed7ed192826c3b6352d9293f4c)) by Max Fan
* **cli:** add waitForMatch guards to e2e tests to prevent race conditions ([a8f891d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/a8f891df968257ba32468c9750d926380d145452)) by Elwyn Benson
* **cli:** prevent double key events in dropdown navigation ([450118f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/450118f91b2568cff5e6ea0d541388a63215f1df)) by Anna Springfield
* wrap shell commands in `sh -c` ([cdc19ad](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/cdc19ad3d454260f266c1c566fbb41c717b5c877)) by Donald Cook

#### ⚡ Refactor

* **cli:** introduce DropdownProvider ([c7460ad](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c7460ad47a1fe7a8a3eb6cbe748f6a28c9feef83)) by Tomas Vik

## **release**  [6.71.7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.6...v6.71.7) (2026-03-12)

## **pre-release**  [6.71.6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.5...v6.71.6) (2026-03-09)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.75.0 ([f5b94ff](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f5b94fffaa4fbbb0a15b423179d152b528aa7bb0)) by GitLab Renovate Bot


### Language Server Release [8.73.0...8.75.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.73.0...v8.75.0)
### [8.74.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.73.0...v8.74.0) (2026-03-05)

#### ✨ Features

* add duoDefaultNamespace from GraphQL ([4217f99](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/4217f9938002b9770c2ebf1756c0e467adea4235)) by Laura Ionel
* **cli:** --dangerously-skip-permissions flag ([ae6bea6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ae6bea60da15647e39b5b79abc0300079d578649)) by Tomas Vik
* **cli:** add environment data to DAU tracking ([5237c9e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5237c9ec3a6cbf781c51816fbdadaa1ec1a7f915)) by Andrei Zubov
* **cli:** track Duo turn cancellation ([40319d5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/40319d55bb5ad046fa86845c5f7de441e1530fdd)) by Tomas Vik

#### 🐛 Bug Fixes

* check local duo settings before sending duo checks ([94e63c1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/94e63c164e12083a76dfedd2bbd469c9091a4ec5)) by Tristan Read
* **ci:** set integration-test-browser to allow_failure ([b876d2f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b876d2fd286c76d5ea602f9b2d5a958982fded9c)) by Tomas Vik
* **cli:** ensure config page cleans up correctly on exit ([2c880bf](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2c880bfe130a9d834f757ad96032223e19492908)) by Elwyn Benson
* **tui:** clear prompt input immediately on submit ([783e121](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/783e1219c335413209473393c3d32cd1bd2d1a47)) by Elwyn Benson

#### ⚡ Refactor

* **cli:** remove run_git_command from anthropic backend ([93d4882](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/93d4882caf7bb19e1f31910164dfa48a78ad5398)) by Tomas Vik

#### ✅ Tests

* **cli:** improve e2e testing utils for debugging ([2813cf2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2813cf20172f43f7dea4a27b74754703c8140f6a)) by Tomas Vik

#### 🔁 Chore

* add debug logging to integration browser test ([e1afaea](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e1afaeac673a36e7b07bda03b2891a01c427663d)) by Tristan Read
* ensure npm publish uses the gitlab-lsp registry ([15ba372](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/15ba372ab619b7d016954a7fa86c6d7581226f02)) by Tristan Read
* update security process to handle tags ([58309fd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/58309fd873a3a9651ae2b7237ffad69646e90ee1)) by Tristan Read


### [8.75.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.74.0...v8.75.0) (2026-03-05)

#### ✨ Features

* **workflow:** forward aiCatalogItemVersionId to runWorkflow ([fe121ed](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/fe121edcc41c9cfbdb2fc0e8803440beb3605fce)) by Igor Drozdov

#### 🐛 Bug Fixes

* revert "feat: add duoDefaultNamespace from GraphQL" ([64d57b4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/64d57b444e619e08d0c8a88af90882010dfbae58)) by Tomas Vik

## **pre-release**  [6.71.5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.4...v6.71.5) (2026-03-06)
### 🔁 Chore

* **deps:** update conventional-changelog-conventionalcommits to ^9.3.0 ([5a7119c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5a7119c07b77f0ab2b4984c23552aec9d10ba037)) by GitLab Dependency Bot
* **deps:** update dependency graphql to ^16.13.1 ([114c15e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/114c15ea417505e9729d72a5bc3de2b1566d3783)) by GitLab Renovate Bot

## **release**  [6.71.4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.3...v6.71.4) (2026-03-04)
### 🐛 Bug Fixes

* improve MR detection with branch normalization ([ee15d63](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ee15d634bdf259e5522512a0232bef2da5c97e13)) by Shalik S

### ✅ Tests

* **workflow-agent:** test background diff tab support ([0c2bf88](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0c2bf88ff8f8e59c814b2af421683fed38c67bd1)) by Tristan Read

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.73.0 ([ca3050b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ca3050bb079e8198faae99543445ba71f8b95ab7)) by GitLab Renovate Bot
* **deps:** update dependency fs-extra to ^11.3.4 ([e78451f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e78451ff5eed79ad8aa8418d4b3f5ad2f20b8fbc)) by GitLab Renovate Bot


### Language Server Release [8.68.0...8.73.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.68.0...v8.73.0)
### [8.69.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.68.0...v8.69.0) (2026-02-24)

#### ✨ Features

* **cli:** glab OAuth credential refresh ([2295b16](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2295b16471714180ac149c6b83fa76d2d3fee345)) by Tomas Vik

#### 🔁 Chore

* update --model help text to use gitlab_identifier format ([5341658](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5341658fef82fc996055d33ca66c980b4c62a321)) by Denys Mishunov


### [8.70.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.69.0...v8.70.0) (2026-02-26)

#### ✨ Features

* **cli:** add '/sessions' for accessing session history ([fb5ea1e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/fb5ea1ee7731cc91c2a557f1b8eaf8fc537489ba)) by Elwyn Benson
* **cli:** config screen improvements ([1b3d825](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1b3d82538822d6934a3abf7419b6e53cd429e509)) by Tomas Vik
* **cli:** session history data fetching ([e85e9ad](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e85e9ad05e507e961e246847dc563819e6230195)) by Elwyn Benson
* **cli:** simplify config screen ([34e299b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/34e299b7a577377ca6ebd0b983d7e8788602936d)) by Tomas Vik

#### 🐛 Bug Fixes

* **cli:** prevent double key events in selections ([9cc74a7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9cc74a7651a7b7a4c243c9bbaf6d9a5d17868f22)) by Elwyn Benson
* don't consider commands failed for non-zero exit code ([3de5096](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3de50969e7fe8c2d6b921ab0c248879107d291ff)) by Elwyn Benson

#### ⚡ Refactor

* **cli:** decouple sessions data service from backend ([1a6de62](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1a6de62cf7204b32afed9355155ff8e594aa39cc)) by Elwyn Benson

#### 🔁 CI

* remove allow_failure from cli-headless-e2e-test ([159406c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/159406c2ec7146580b8dc44a9f041729a2fca2ee)) by Elwyn Benson

#### 🔁 Chore

* disable tracking for e2e tests ([b1bb788](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b1bb7887476ded3dd797b13176de949587d0d3a2)) by Andrei Zubov
* remove agentic_chat_access checker ([11efa7e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/11efa7ebedb018b82ec5eeb0f4ece2cba95d449a)) by Andrei Zubov


### [8.71.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.70.0...v8.71.0) (2026-02-26)

#### ✨ Features

* **flow:** add universal component picker with palette/shortcut and edge-drop node placement ([441dc15](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/441dc15e78a5f7d7a08cdfefa33098aa12debc03)) by John Slaughter

#### 🐛 Bug Fixes

* **cli:** don't prevent underscore keypresses ([5f6bbd6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5f6bbd607e2d0977615ffd3c1f2aaedf310a9624)) by Elwyn Benson
* explicitly set credential helper rather than relying on default behaviour ([173ef78](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/173ef78cdea9e50f6caccd4e775ea7a63f0c593f)) by Andrei Zubov
* **tui:** lag spike on cli start no longer prevents typing ([486a338](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/486a33842a2d190f41c3a8cc3f3d2c602e8386fd)) by Elwyn Benson

#### ⚡ Refactor

* **cli:** move endCursor pagination state from TUI type to controller ([7f51a56](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/7f51a566a91e8d2450e849e4bf88d14ec8a02ed8)) by Elwyn Benson
* **cli:** move session callback ownership to SessionsHistoryController ([560ccaa](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/560ccaacc07bca08a0a64a4df31eb63490ed3d97)) by Elwyn Benson

#### ✅ Tests

* **tui:** replace jest forceExit with proper cleanup ([96b19f3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/96b19f322ee72f550d3b985cb4dac5bf20e74d4e)) by Elwyn Benson

#### 🔁 Chore

* Remove legacy response field usage in tests ([618db38](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/618db389c89afe8ebef3f49d1c7907487aebe841)) by Halil Coban


### [8.72.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.71.0...v8.72.0) (2026-03-03)

#### ✨ Features

* add shell context to Duo CLI sessions ([16714cc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/16714cc7f849aebb933cabac7038f3baab76c2a6)) by Tomas Vik
* **cli:** add MCP status indicator ([800d119](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/800d119bf137379930474a8a698fbc0c921eee91)) by Elwyn Benson
* **cli:** show usage cut off status ([1697572](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1697572a0862d3690fab455b435d0eafba61ad82)) by Andrei Zubov
* **dap-v2:** add agent message actions ([7bba1b0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/7bba1b0bcaf241995570a4957ecd0ca8b5e120d5)) by Juhee Lee
* **flow:** introduce explicit input schema and visual START node ([3b359b4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3b359b48e605b15b9127cea7e0e67a7afe41de8d)) by John Slaughter
* show selected model in duo cli header ([2bee1af](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2bee1af3a3f3a6c48f737ecafcea7c10cb54c9f3)) by Andrei Zubov
* **tui:** add DropdownItem component for slash commands ([fa3dea9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/fa3dea91effab9efb448e63f09513fa7be2ca67d)) by Anna Springfield

#### 🐛 Bug Fixes

* add "help" command to Duo CLI ([90a45de](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/90a45deca7f552c4a7f15b1da6ddb1be1bc5ba77)) by Andrei Zubov
* Add workflow_definition to the e2e tests ([8534886](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/85348868dbce8720d9b3ee32114d3217cc38f20f)) by Andras Herczeg
* **cli:** abort in-flight requests to prevent out-of-order responses ([8291c5b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8291c5bc019ead7f2b97152821a095a043dd6af2)) by Elwyn Benson
* **cli:** duo direct broken due to cyclic DI dependency ([927d713](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/927d7136b4ebc6e7fc5b8691a13e2e7bda58395d)) by Tomas Vik
* Remove usage quota loading flag ([4229ebb](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/4229ebbfff90cea2ebce6af8da92040cf2a78128)) by Olena Horal-Koretska
* **tui:** constrain prompt input to viewport height with scrolling ([7d3cef2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/7d3cef28d2f3a5179f321ba7fd7df832013e34ff)) by Elwyn Benson

#### ⚡ Refactor

* **tui:** extract SearchableList generic component ([0654333](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/06543336802e96668e9b1ff3d9fce261a9c61385)) by Elwyn Benson

#### ✅ Tests

* **cli:** add e2e tests for session lifecycle and navigation ([087887c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/087887c67398f6d989d340a9031cb35226192b5a)) by Elwyn Benson
* **cli:** fix flow_definition to work with shell_command ([3c7089c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3c7089cea131176bce528615ba35e49ef99af3b7)) by Elwyn Benson

#### 🔁 Chore

* **cli:** add cli-development skill ([1d71f21](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1d71f2135a29dbef464bb2d598841a1a1a48c55b)) by Tomas Vik
* **cli:** more verbose type for update checker result ([2364bfd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2364bfd9ed5bc484044c6ed1ec325a0eb13238db)) by Tomas Vik


### [8.73.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.72.0...v8.73.0) (2026-03-04)

#### ✨ Features

* **cli:** Reduce the number of spinners in the welcome screen ([8a7b47c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8a7b47cc3e0a3a3db4862c5d14bb0e49acfc0b3c)) by Andrei Zubov
* **skills:** support Agent Skills as slash commands and additional context ([595fbf9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/595fbf9214b2f1981f03c19ac3f54a55651a5c40)) by Erran Carey
* **workflow:** add ai_catalog_item_version_id to WS URL ([bfd71fe](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/bfd71fe8f21a15742f956977effe27597ae78460)) by Igor Drozdov

#### 🐛 Bug Fixes

* **cli:** stability improvements for sessions e2e tests ([c9338dd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c9338dd020287916b9ca860c2e2d106024db62fa)) by Elwyn Benson

#### ⚡ Refactor

* use composition over inheritance with Shell context providers ([8decfc4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8decfc414aab9f2a56c73531196282e71a901d36)) by Tomas Vik

#### ✅ Tests

* **cli:** add prompt input navigation and editing e2e tests ([ec8b138](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ec8b13837524be2746dad7eb56ca9eff3978d4ec)) by Elwyn Benson
* fix flaky did_change_watched_files tests - wait for workspace init ([62268c3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/62268c3c0f70156cbbf6c438a55c28de9e5bfd9e)) by Elwyn Benson

## **release**  [6.71.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.2...v6.71.3) (2026-03-04)

## **release**  [6.71.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.1...v6.71.2) (2026-02-24)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.68.0 ([60cb274](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/60cb2744fbab3e1b5297b7f02aabf7267623fbb4)) by GitLab Renovate Bot
* **deps:** update dependency lodash to ^4.17.23 ([0a526f4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0a526f471e3711568563f36000b04712435ff136)) by GitLab Renovate Bot


### Language Server Release [8.67.0...8.68.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.67.0...v8.68.0)
### [8.68.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.67.0...v8.68.0) (2026-02-23)

#### ✨ Features

* Add `workflow_definition` param to user quota check ([57d81ae](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/57d81aef2ca49db9c1e03b613860604b2a061ef0)) by Olena Horal-Koretska
* add new message components for DAP v2 ([a257bc6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/a257bc6bb73a3970a0ce85199c1d139743832fab)) by Juhee Lee
* **cli:** add slash command interfaces and service ([e997de5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e997de5db44f02af24435bf817b534a1314c1643)) by Anna Springfield
* **cli:** basic model selection ([2e96b0b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2e96b0b838ed3c78dbf8737900260091126be5b4)) by Tomas Vik
* Show error state in DAP when token gets invalid ([6353c22](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6353c22b2e48c9e63163c571c4e724d9dceab87e)) by Olena Horal-Koretska
* **webview:** add webview dev mode ([2a1ec89](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2a1ec8994ed52561b7866e42f75aa2abad0a965f)) by John Slaughter

#### 🐛 Bug Fixes

* cap additional context id length to prevent GraphQL validation error ([71f3c66](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/71f3c66885c15ee4979bb3c1b63e5bbeeb3bac96)) by ŁUKASZ KORBASIEWICZ
* **cli:** \x1b\r handled as shift+return ([9907c3d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9907c3dbf4aafc0224ce5e0a037dd496d4a343e4)) by Tomas Vik
* Do not fail all context items when one fails ([32e141b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/32e141bf98847b7f9f646dc77e1681ae32fceca2)) by Olena Horal-Koretska
* implement async executor disposal ([f3cc196](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f3cc196dfff5b69313d6f22af10040e3f98473aa)) by Elwyn Benson
* Reset chat error on navigation ([b7f5228](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b7f5228392c29fb00d49630208c673ac20d799dc)) by Olena Horal-Koretska
* Reset state on FE when BE fails to do so ([461aa14](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/461aa140a9931a396bc479e49b866c56ac7cda7a)) by Olena Horal-Koretska

#### 📝 Documentation

* DI skill ([1b0f118](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/1b0f1189db4752a0f8019cc70c8ced58d74bc616)) by Tomas Vik

#### ⚡ Refactor

* **cli:** introduce RuntimeContext ([3268084](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3268084cddf13cdd4cb9277ed891fb54636b7c31)) by Tomas Vik
* **cli:** move backend service registration into BackendConfigAdapter ([d46f1bc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d46f1bc997be9ce7a954987c4fdea74c9b458dd8)) by Tomas Vik
* **cli:** parse and transform cli options usding zod schema ([6092f5b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6092f5b814e069c4be70780413dad70bb1770ac5)) by Tomas Vik
* **cli:** parse backend options separately ([307d84a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/307d84a9d4ad6457827317c01e2defcf792e5396)) by Tomas Vik
* **cli:** remove CliRunConfig ([96ffda0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/96ffda0f2da7bcff793ceaf928d4d535969403d3)) by Tomas Vik

#### ✅ Tests

* **cli:** e2e tests print last 200 log lines on failure ([217c212](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/217c212e7aa04b7f85ee6f2f881e4d869d58ca2d)) by Tomas Vik
* simplify git integration tests to avoid CI timeouts ([c667999](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c667999aecd07a87f5f7c0a2ed63a6cccc8ef7a6)) by Tomas Vik

#### 🔁 Chore

* **deps:** update dependency chai to ^6.2.2 ([081d1b6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/081d1b66b62302e6a71bdbb681b80865484ba463)) by GitLab Renovate Bot

## **pre-release**  [6.71.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.71.0...v6.71.1) (2026-02-23)
### 🔁 Chore

* move agentic-platform tab visibility back to package.json ([86cb054](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/86cb054916aac17848907b7f4b7b1710ff5c0691)) by Andrei Zubov

# **release**  [6.71.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.70.2...v6.71.0) (2026-02-19)
### ✨ Features

* remove ai_duo_agent_platform_ga_rollout feature flag ([fc28909](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fc28909d8bb86e60d685f827a3b89800bfc310be)) by Andrei Zubov

### 🔁 Chore

* updated display name ([23e2861](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/23e2861cbf364648b6c462d93953460f7d218a6c)) by Donald Cook


### Language Server Release [8.66.0...8.67.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.66.0...v8.67.0)
### [8.67.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.66.0...v8.67.0) (2026-02-18)

#### ✨ Features

* remove agentic platform ga rollout check ([35bdefd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/35bdefd926663fb48ccc610c0e51a001f901dc7a)) by Andrei Zubov

#### 🐛 Bug Fixes

* Check Duo Feature Access state only when API is valid ([aee1068](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/aee1068bd86571aa8e4d6a7eb5c18a54a0f504a4)) by Olena Horal-Koretska

#### ⚡ Refactor

* **cli:** duo direct to run anthropic backend ([6ce728a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6ce728aa82ccaa02c0af03ad9412b34eafd1ee9a)) by Tomas Vik
* **cli:** shared CLI options definition ([8d137d4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8d137d4b32887760c681dd6b0d53c50358467b55)) by Tomas Vik

#### ✅ Tests

* **cli:** disable glab e2e test for now ([8f2b743](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8f2b74346e12f3e826b7eaa3079093daf96829c1)) by Tomas Vik
* increase timeout in integration-persistent-storage test to reduce flakiness ([3d6cc58](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3d6cc58452139b2153eb91ab0dc88b783a921ec9)) by Tomas Vik

#### 🔁 Chore

* **cli:** update required glab version ([8232728](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8232728c4b0bd2235dd861b2afb7499f4eaa82ca)) by Tomas Vik

## **pre-release**  [6.70.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.70.1...v6.70.2) (2026-02-18)
### 🔁 Chore

* **deps:** update dependency @gitlab/needle to v2 ([25cc75c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/25cc75c66e26fbae12c640c1a014ac26873817e4)) by GitLab Renovate Bot

## **pre-release**  [6.70.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.70.0...v6.70.1) (2026-02-17)
### 🐛 Bug Fixes

* **auth:** don't make failing token check requests ([318fe4e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/318fe4e664c6b2d9dd2fa76067d31e2cb039b219)) by Tomas Vik

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.66.0 ([3f5c84f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3f5c84fdb2940144e22791ab6f76790592ed34af)) by GitLab Renovate Bot
* **deps:** update dependency esbuild to ^0.27.3 ([a9e2715](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a9e2715ba53a2a1906fd501ecbfe512b642566f3)) by GitLab Renovate Bot


### Language Server Release [8.65.0...8.66.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.65.0...v8.66.0)
### [8.66.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.65.0...v8.66.0) (2026-02-16)

#### ✨ Features

* add agentic chat support check to Duo CLI ([67c4552](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/67c4552c8769a4edc5fc68d7cae66bf776043f7c)) by Andrei Zubov
* **cli:** use glab for authentication ([d706491](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d706491305518dae2ae37a79de700da086aa92ad)) by Tomas Vik
* **flow:** populate tool registry with sample tool definitions from duo_workflow_service ([7deb070](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/7deb07047dcc59f213504635c7a35cd918ad56d8)) by John Slaughter
* Pass `rootNamespaceId` when getting workflow token for CLI ([d10da93](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d10da9327e79fbe8d70ce7a91569099a0f7875cd)) by Olena Horal-Koretska
* persist user model selection via LSP workspace settings ([d37d7d5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d37d7d5d149f1e71f015fd4b627b366050bde1f7)) by Karl Jamoralin
* **token-validation:** accept ai_features and read_api scopes ([2c69a8d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2c69a8d676c70799a8c662f7a6bd5a85ab38a66e)) by Mohammed Osumah

#### 🐛 Bug Fixes

* **auth:** don't make failing token check requests ([0434aa4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/0434aa45805217e5d0119489eb70c2c51af53380)) by Tomas Vik
* **cli:** adjust version compatability for --use-system-ca ([7f40afc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/7f40afc2dc725193e5220f4c37aa5474664d29de)) by Elwyn Benson
* **flow:** replace HTML5 drag-and-drop with pointer events for vscode webview compatibility ([701b60d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/701b60d92d8948195a832c64706d65af7f6cfb07)) by John Slaughter

#### ✅ Tests

* **cli:** e2e test for authentication methods ([831aa3f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/831aa3fd49a007c5598fc3787e1140f0969b5d0a)) by Tomas Vik

#### 🔁 Chore

* **deps:** update dependency @monyone/aho-corasick to ^1.1.6 ([a5742f7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/a5742f73b2c278e92bc908c70acefd8a3159d69b)) by GitLab Renovate Bot
* **deps:** update dependency @parcel/watcher to ^2.5.6 ([8ee2eaa](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8ee2eaa01b90b34dc57cce0f25990a72cdce980a)) by GitLab Renovate Bot
* **deps:** update dependency @snowplow/tracker-core to ^3.24.6 ([ce85df2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ce85df2ca434e10822cd305590f354663c9c18ae)) by GitLab Renovate Bot
* **deps:** update dependency @tailwindcss/vite to ^4.1.18 ([5d5f348](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5d5f348441317cf0a0d3e04c2e5bb17c9eb8bb91)) by GitLab Renovate Bot
* **deps:** update dependency lodash to ^4.17.23 ([6c5b0e2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6c5b0e2f81a5a08cf37364e80a26f6b9670e709c)) by GitLab Renovate Bot
* refactor ctrl+c handling in duo cli inputs ([ad92fc8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ad92fc8e801a2cabff8b4ed833453eac3dbc594a)) by Andrei Zubov
* update duo cli installation docs ([d19eb40](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d19eb40a8143d01270e09481482108d8e3a1a55b)) by Andrei Zubov

# **release**  [6.70.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.69.3...v6.70.0) (2026-02-16)
### ✨ Features

* updated display name ([dc3a09d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dc3a09d60c0f6f4ab1172662c2eb63707ed53f09)) by Donald Cook

### 🔁 CI

* allow test-e2e and test-e2e-windows jobs to fail ([0e595aa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0e595aad3c851bd41a16a62a898be0b189a09294)) by Tristan Read

### 🔁 Chore

* **deps:** update dependency @babel/cli to ^7.28.6 ([df4972c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/df4972cbd4e076109b8bde877d821c896c207986)) by GitLab Renovate Bot
* **deps:** update dependency @gitlab/eslint-plugin to ^21.3.1 ([f0314c0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f0314c01e28a24f84cbf43ea48c31d90b41e36a8)) by GitLab Renovate Bot
* **deps:** update dependency glob to ^13.0.3 ([706b40e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/706b40e0f69173f3b202d7e37189906df3ab2116)) by GitLab Renovate Bot
* **deps:** update dependency ovsx to ^0.10.9 ([ece36e1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ece36e110b09076dfbbd142651447bbbff30c2d0)) by GitLab Renovate Bot
* Revert "Merge branch 'dc/display-name' into 'main'" ([aab9176](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/aab9176076fa9c1c422156bf785d186dbd28acd3)) by Tristan Read

## **release**  [6.69.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.69.2...v6.69.3) (2026-02-12)

## **pre-release**  [6.69.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.69.1...v6.69.2) (2026-02-12)
### 🐛 Bug Fixes

* remove beta text for duo agent in settings ([dda74bd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dda74bd1d0af68b208dcf6403894dff659ac6c80)) by Warren Wolcott

### 🔁 Chore

* **deps:** update dependency @babel/preset-env to ^7.29.0 ([e2c666b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e2c666b564004227bbf79e3d2ec0e3fb261b6c50)) by GitLab Renovate Bot
* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.64.0 ([4d921b4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4d921b451e583234ca6a1f6643b58229c4bd5f0e)) by Olena Horal-Koretska
* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.65.0 ([f57aa2f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f57aa2f9e58c6e25111b9182ae282e0c3cc24ff3)) by GitLab Renovate Bot
* **deps:** update dependency glob to ^13.0.2 ([4ac07f6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4ac07f623670f2bae43e05ae66ae83b39c80ae99)) by GitLab Renovate Bot


### Language Server Release [8.62.2...8.65.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.62.2...v8.65.0)
### [8.63.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.62.2...v8.63.0) (2026-02-10)

#### ✨ Features

* add support for self-signed certificates in Duo CLI ([f4fed09](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f4fed09b5296d666d2152f3acdba5bd5029e64de)) by Andrei Zubov
* **cli:** support custom SSL certificates ([266d49d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/266d49de9b5db1194e99aa550e4e148b59500871)) by Elwyn Benson
* **flow:** add JSON Schema support for node type definitions with mock schemas ([636ee2b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/636ee2b69dccbdb83bd41c395c5eaddd89e89784)) by John Slaughter
* history UI improvements ([201d522](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/201d522de5ae03f2b42da678007cbaf2a080a13a)) by Juhee Lee
* Provide `root_namespace_id` as param for `duo_workflows/direct_access` ([83c027c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/83c027c803a730b03cfd7d2c13d506a4a3401343)) by Olena Horal-Koretska

#### 🐛 Bug Fixes

* **cli:** console.log during render redirects to our normal log file ([c8a6d14](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c8a6d14d87754ae61b364267308f74689888fdac)) by Tomas Vik
* Resolve shell context cwd for SEA binaries using workspaceFolders ([eee28bc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/eee28bcee7286c9fc5f7991e2f06b2f1ecea0432)) by Karl Jamoralin

#### 📝 Documentation

* update Duo CLI readme with intro, set up, and link to user docs ([b93a9d9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b93a9d9f730dc6ec82aa9f7b693c873a17d0afa8)) by Uma Chandran

#### ⚡ Refactor

* **cli:** add SessionManager ([800b85e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/800b85ec9973b0da0862f06fd55630fbd03ef473)) by Elwyn Benson
* **cli:** consolidate input handling, tests, small fixes ([9a0accb](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9a0accb8012b5e1e2f402f8607858a6c990359cb)) by Tomas Vik
* **cli:** improve message completion clarity ([656cb7f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/656cb7f9e40b5ed81bec43f3c662ec359f00efe1)) by Elwyn Benson

#### 🔁 Chore

* add graph traversal utilities for flow analysis ([0c4c076](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/0c4c076c6152e20408bf599c34f4378bdfeb3ed1)) by John Slaughter
* Add token reset log ([e61d807](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e61d8079317e3600a2d7106224acee006b8ffeef)) by Olena Horal-Koretska
* **deps:** update dependency @gitlab/eslint-plugin to ^21.3.1 ([2c9df05](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2c9df055c47d816dd94d64ca0bc3ce90bb4e563d)) by GitLab Renovate Bot
* **deps:** update dependency esbuild to ^0.27.3 ([0791c24](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/0791c245958d35d1ffc92adbab8a00a786f62862)) by GitLab Dependency Bot
* initial AI tooling for LS ([f75e6d1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f75e6d14678814878c42d82defe2930751cec935)) by Tomas Vik
* simplify Duo Chat credits message ([d2bea1a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d2bea1a663accaae69a392f23bd6ca34af65948f)) by Uma Chandran


### [8.64.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.63.0...v8.64.0) (2026-02-10)

#### ✨ Features

* add git author params ([4a41793](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/4a4179315224a33805aee17c1af66615b212039b)) by Roman Eisner
* **cli:** apply secret redaction to user prompts ([8e2c02b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8e2c02b82ffbb852f2ef58d8beb939a2d8d9b736)) by Elwyn Benson


### [8.65.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.64.0...v8.65.0) (2026-02-11)

#### ✨ Features

* **cli:** start new session with '/new' ([3d71567](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3d71567a4fec5aeeb780fc6441d95b9cae6e2d2f)) by Elwyn Benson

#### 🐛 Bug Fixes

* dont expose host network to docker ([500b754](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/500b7544c48ec1ea54bd11bc24a2221c0b1856ed)) by Roman Eisner
* Set usage quota loading state to `[secure]` initially ([b3bc740](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b3bc7409e38a756c9fab57747741ef66856feee3)) by Olena Horal-Koretska

#### ⚡ Refactor

* **cli:** Smart components with KeyHandler ([da1571f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/da1571f6ffb61569e072350912718190b99e3b0c)) by Tomas Vik
* Register `CodeSuggestionTelemetryState` with DI ([edd13e4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/edd13e47d4256445b02045f84fb09b71e433d363)) by Olena Horal-Koretska

#### 🔁 Chore

* **deps:** update dependency highlight.js to ^11.11.1 ([7422511](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/7422511cc81cba71749d970f830a43bbb50b6556)) by GitLab Renovate Bot

## **pre-release**  [6.69.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.69.0...v6.69.1) (2026-02-11)
### 🔁 Chore

* **deps:** update dependency ovsx to ^0.10.8 ([677829e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/677829ecbc9dbccb1501b7dff801c049e2226b3e)) by GitLab Renovate Bot
* rename extension to GitLab ([a2aa048](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a2aa0486504f75b5271512bdf0f11d85866aed18)) by Elwyn Benson
* undo extension rename again ([762a5c6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/762a5c69de51d2a61c5377e9efd52f8adba9184a)) by Elwyn Benson

# **pre-release**  [6.69.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.68.2...v6.69.0) (2026-02-10)
### ✨ Features

* Ask to push branch before creating MR ([d015207](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d01520796fedea33c9efc47b86487b6bbd3b79d4)) by Lennard Sprong
* Update branch immediately when state changes ([4d151d9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4d151d99a7272b73a158d97f0328c630d5b5afb5)) by Lennard Sprong

### 🔁 Chore

* arbitrary change to trigger re-release ([621e2a5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/621e2a5e57a0da45d8de69911ba25e99af626380)) by Elwyn Benson
* **ci variables:** update the ci_variables.json ([95e5d74](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/95e5d74b11cfa61f6c412490049a5d69b5c6b567)) by Elwyn Benson
* **ci variables:** update the ci_variables.json ([32bdfa0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/32bdfa0349469e808b9fb58b3292283a3668fbba)) by Lennard Sprong
* rename extension displayName to GitLab ([8400251](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8400251bc5e8cbf0c22a3427d4327b38db96988c)) by Elwyn Benson
* revert extension rename again ([5ffc949](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5ffc94922e3f79e890bdd4339d4166c46219abdb)) by Elwyn Benson

## **pre-release**  [6.68.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.68.1...v6.68.2) (2026-02-09)
### 🐛 Bug Fixes

* Ensure footer toggle enables/disables code suggestions ([457189c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/457189ca209d16fa60b14f78814e9a72b4ed71c6)) by Dylan Bernardi

## **release**  [6.68.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.68.0...v6.68.1) (2026-02-05)
### 📝 Documentation

* Add comprehensive custom certificate authority guide ([900cf03](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/900cf035d3f027c80f6f236c373d2435f54675b2)) by Rohan Satkar

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.61.1 ([2b356b9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2b356b9c47a4921eac4556f480ea9f31343c6a89)) by GitLab Renovate Bot
* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.62.2 ([81f15f0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/81f15f0140241c82cdfec943d2f557d9e5728e79)) by Tristan Read


### Language Server Release [8.61.0...8.62.2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.61.0...v8.62.2)
### [8.61.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.61.0...v8.61.1) (2026-02-03)

#### 🐛 Bug Fixes

* **cli:** centralise exit handler, dispose DI container ([0cefe4a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/0cefe4ab38ed5df2c6510bd0aeec197358d6de22)) by Elwyn Benson
* **cli:** use valid token for git tool with anthriopic backend ([adf4959](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/adf4959b302ae7f3938c11ae66551581240ed8ba)) by Elwyn Benson

#### ✅ Tests

* **cli:** e2e tests use tmux rather than node-pty ([6a4d352](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/6a4d35215dcb09b82d801c88318aea2d6ccbd821)) by Tomas Vik


### [8.62.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.61.1...v8.62.0) (2026-02-04)

#### ✨ Features

* add daily active users tracking in duo CLI ([21b39c9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/21b39c9fd46e6f969b3223d0c3eeabeacc8d2cdf)) by Andrei Zubov

#### 🐛 Bug Fixes

* **cli:** handle shell command actions in UI ([dc2786d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/dc2786d34727995c5996f54a2d2a7332ef58eaad)) by Elwyn Benson
* **cli:** redirect mcp server stderr to log file ([232f990](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/232f9900c4534e77ba6f2c69f6d483d3e621fe24)) by Elwyn Benson
* **duo-chat:** prevent WebSocket connection leaks with ChatSubscription lifecycle management ([bade890](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/bade89059997609c3d9692a2f6ba02b4e9607208)) by John Slaughter

#### ⚡ Refactor

* **cli:** move backend creation from DI to factories ([12e4044](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/12e404403b97e75e1f84743f80b615a0116398e1)) by Elwyn Benson

#### 🔁 Chore

* **cli:** Unify Duo CLI input handling ([d16d39b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d16d39b38b79912310ac48eec5a05ea49b8cb696)) by Tomas Vik


### [8.62.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.62.0...v8.62.1) (2026-02-04)

#### 🐛 Bug Fixes

* **cli:** ensure completed message events yield correctly ([749a13b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/749a13b43a41f7ebc1488decade03b3ae4b3cc99)) by Elwyn Benson
* **cli:** remove punycode deprecation warning on startup ([35174e3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/35174e38219a08bb048648dec60a9483827fa8a1)) by Tomas Vik

#### 🔁 Chore

* **deps:** update dependency @gitlab/duo-ui to ^15.8.3 ([66df7f6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/66df7f6c66405a307b524386d70159ecc168e74f)) by Olena Horal-Koretska


### [8.62.2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.62.1...v8.62.2) (2026-02-05)

#### 🐛 Bug Fixes

* ensure proxy settings are applied to WebSocket connections ([627109c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/627109c3850381f483de00a8114e5e2eeb5d505c)) by Tristan Read

# **pre-release**  [6.68.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.67.6...v6.68.0) (2026-02-04)
### ✨ Features

* Add setting for hiding closed Merge Requests ([c6bba8e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c6bba8e38b07bae28abc28ca06b1e73fa258ed02)) by Lennard Sprong

### 🐛 Bug Fixes

* **diag:** Ensure DAP sections shows correct feature state ([38c4b24](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/38c4b24e37dfc0aca0da7d4f1e45ef8b3f678663)) by Dylan Bernardi

## **release**  [6.67.6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.67.5...v6.67.6) (2026-02-02)
### 🐛 Bug Fixes

* revert display name back to GitLab Workflow ([61583e7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/61583e740303b43529fe9d3657b84431a3a18779)) by Tristan Read

### ⚡ Refactor

* remove languageServer feature flag ([7e37fe2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7e37fe28337b7c296876a7599ae67b97e53221e1)) by Rohan Satkar

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.61.0 ([15634cc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/15634cc2c723eb6eb2dfbd0c62fe9ceb82db58ac)) by GitLab Renovate Bot
* pass editor scrollbar theme variables ([f25c037](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f25c037eb38dc1966891a2fef7e79836890e673e)) by Juhee Lee
* rename extension from "GitLab Workflow" to "GitLab for VS Code" ([ff51606](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ff51606f9d731a873f157009068b0c6cfaa78dc1)) by Amy Qualls


### Language Server Release [8.60.0...8.61.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.60.0...v8.61.0)
### [8.61.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.60.0...v8.61.0) (2026-02-01)

#### ✨ Features

* add search and infinite scrolling ([4b72540](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/4b72540eba1c778d00691293bf9be99956f84597)) by Juhee Lee

#### 🐛 Bug Fixes

* **cli:** dont throttle initial loading state ([342cf0e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/342cf0e7faa915c67e5886cf9c11d36876231327)) by Elwyn Benson
* **cli:** handle empty flow-config value to prevent EISDIR error ([d82e798](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d82e7982067bacd97d9473a97384d929b61acb03)) by Falko Sieverding
* **mcp:** skip external MCP servers in sandbox mode ([2e1ab53](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2e1ab5392dd396d81b8e47017cc74d400f9616a1)) by Falko Sieverding

#### ⚡ Refactor

* **cli:** invert existing-session-id usage ([3ad92d9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3ad92d9038f6a741a712cb42019db66a73bed7a1)) by Elwyn Benson
* **flow:** split monolithic flowStore into focused stores with coordination composable ([e29e33f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e29e33f58ff300a6318f07797013587ba4048092)) by John Slaughter

#### ✅ Tests

* **cli:** First iteration of interactive Duo CLI E2E tests ([e8c81b3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e8c81b342da538a05049a03e1dcf42b0f77a86f7)) by Tomas Vik

#### 🔁 Chore

* extract common tracking logic to telemetry package ([936b332](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/936b3324186e44f011263534ad3fac42a7b0f7f9)) by Andrei Zubov
* rename workflow extension ([37aef12](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/37aef121f7f4b359564582fb62c69164af346033)) by Uma Chandran

## **release**  [6.67.5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.67.4...v6.67.5) (2026-01-29)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.60.0 ([c69df01](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c69df01357add54938b8e45090dadbf3d842cd03)) by GitLab Renovate Bot


### Language Server Release [8.59.1...8.60.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.59.1...v8.60.0)
### [8.60.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.59.1...v8.60.0) (2026-01-29)

#### ✨ Features

* display language server logs in output channel for webide ([a55bbcf](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/a55bbcf33b957069b30c583387df8b823599e8ed)) by Mohammed Osumah

#### 🐛 Bug Fixes

* **cli:** use gitlab.com as a default GitLab URL ([31f9bda](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/31f9bda14f711eeaf77997e4461481b8e7aa1be5)) by Tomas Vik
* fail create_file_with_contents when file exists ([fe41607](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/fe41607396b15f9c3ef9f2c3ce94894c525a794e)) by Eva Kadlecová
* Fix race condition between CS requested and following events ([5552075](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/5552075535583f0beb040cab488723c154a42c85)) by Olena Horal-Koretska

#### ⚡ Refactor

* **cli:** extract session state from controller ([2f77dff](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/2f77dff4b870cdf5d35442da56ff4207cd81f5a3)) by Elwyn Benson

#### ✅ Tests

* **cli:** add integration test for update check ([54498cd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/54498cdb35105edc574c5a43fc72cf99047417ed)) by Elwyn Benson
* **cli:** disable local MCP servers in integration tests ([4d9bbbf](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/4d9bbbfd0a61fc81e0bccf9f33778946f77bfe35)) by Elwyn Benson

#### 🔁 Chore

* **cli:** improve invalid_token error message ([71a11e6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/71a11e6a3a65cd060a8e82596e506e6ef3e383a7)) by Elwyn Benson
* **cli:** mark mid-stream assistant messages as complete ([404c885](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/404c885d5306ed0a9a9889b83a37d762c50e1f83)) by Tomas Vik

## **pre-release**  [6.67.4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.67.3...v6.67.4) (2026-01-28)
### 🐛 Bug Fixes

* Add support for absolute SSH remote URL parsing ([bd52507](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bd52507cecc0894b840efadc1cf4112210a9bc3c)) by Rohan Satkar
* make activity bar icon theme-aware ([aff994d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/aff994d662573f87ea48742cfafc19133e5dd9e3)) by Rohan Satkar

## **release**  [6.67.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.67.2...v6.67.3) (2026-01-27)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.59.1 ([b723291](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b723291413befd4af4206951ab34d53d2fd4af9b)) by GitLab Renovate Bot


### Language Server Release [8.58.1...8.59.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.58.1...v8.59.1)
### [8.59.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.59.0...v8.59.1) (2026-01-27)

#### 🐛 Bug Fixes

* force trigger re-release take 2 ([054060a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/054060a55df26a14775bffdf93dddea9bbcc288c)) by Elwyn Benson

## **pre-release**  [6.67.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.67.1...v6.67.2) (2026-01-26)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.58.1 ([547e378](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/547e3781c009a0b99ff930f4560c61ebeb769e98)) by GitLab Renovate Bot


### Language Server Release [8.58.0...8.58.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.58.0...v8.58.1)
### [8.58.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.58.0...v8.58.1) (2026-01-20)

#### 🐛 Bug Fixes

* ensure file read errors correctly bubble up ([8ce7224](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/8ce72241a210d0162a131c80e26c390831f3a303)) by Elwyn Benson

#### 🔁 Chore

* add storybook interaction tests for packages/webview ([3bf9ada](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3bf9ada5261102b3976fddc16e59b1b42d646910)) by Juhee Lee
* build duo CLI binaries in ci ([3c5d093](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/3c5d093b9c57842ca837025387a51e6207249f2f)) by Andrei Zubov

## **pre-release**  [6.67.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.67.0...v6.67.1) (2026-01-22)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.58.0 ([3c9b741](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3c9b7416b570f3357f30c6dcfb6d2e5147559378)) by GitLab Renovate Bot
* update unit test based on LSP text change ([19d6e86](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/19d6e860dad59e57680604e544532789970f71da)) by Tristan Read


### Language Server Release [8.57.1...8.58.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.57.1...v8.58.0)
### [8.58.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/compare/v8.57.1...v8.58.0) (2026-01-19)

#### ✨ Features

* Remove tab hiding logic ([deb3409](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/deb34093d1b7f99a03f6eb39faf74a5f5391dc44)) by Olena Horal-Koretska
* **tui:** file fuzzy search + add file content to message ([11af1a3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/11af1a35f370d1c817bc345176dfcdbe5596e314)) by Elwyn Benson

#### 🐛 Bug Fixes

* allow patch releases for chore-only changes ([b466828](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b466828b0f94a6d885236cc6751db70c45b4f3d7)) by Tristan Read
* Fix pending message reset ([b06074c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b06074ca0bd7ef6dc788e81c1a037dba5180892c)) by Olena Horal-Koretska
* small memory leak due to event listener not being cleaned up ([62841f4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/62841f4d4f5f126e14bf65503ccff6f8506266b0)) by Elwyn Benson

#### ⚡ Refactor

* **cli:** extract header component ([05a1294](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/05a1294fac22ff1faaf2df8ffcb38f0cc0928ddd)) by Tomas Vik
* **cli:** instantiate controllers via DI ([b67d183](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/b67d1837d35da623333054094f03558c676c3880)) by Elwyn Benson

#### ✅ Tests

* **cli:** add e2e tests ([ff78517](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/ff7851709e2ac7903abc2f30bf601f0f59ab0512)) by Elwyn Benson
* summarise integration test failures in output ([bf98fb6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/bf98fb69f646a3d79139701bfcd342ad2f4179b6)) by Elwyn Benson
* use real rpc message sender in tests ([484ee10](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/484ee10a090941680336ef9cde5e5c2a2fcdb313)) by Elwyn Benson

#### 🔁 Chore

* **cli:** add file context provider ([001908e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/001908e6d0cb67a52b5e49317a35a251a1c2d3d9)) by Elwyn Benson
* **cli:** enable sourcemaps in debug mode ([0e0ec16](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/0e0ec16659c14ca27464dfff000ec2d005c914a3)) by Tomas Vik
* **cli:** open devtools automatically when running `watch:tools` ([e305f6f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/e305f6fd8e6848f1cfd686de0360b3e2f4912859)) by Elwyn Benson
* delete old flow code ([598493e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/598493ec8ff454471f30b316ddfa51683e08a2f1)) by Andrew Fontaine
* **deps:** update dependency @gitlab/duo-ui to ^15.5.1 ([98eeeb9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/98eeeb94aad2a7a7be98ba3391b754c06d4d26a7)) by Olena Horal-Koretska
* prevent dangerbot from running on mirror fork MRs ([120df7b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/120df7b92beaa796641d2a9d337d4050bcf7c1aa)) by Tristan Read
* require node version 20 or higher to run Duo CLI ([f42c1b8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/f42c1b87ef739a17119f06a7c1ca3488791a55ec)) by Tomas Vik
* update ci config to handle alternate repos ([d4b645c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/d4b645cf34836916f7f25abc9124e76ec8684cda)) by Tristan Read
* update docs link in CLI for setting namespace ([776f18b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/776f18bf27fd474d90bfd6e29e1b7c41b8b966ea)) by Uma Chandran
* update gitleaks rules and rule evaluation process ([da7018b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/da7018bd15be8a8c94b2c4b8db9ebf58f5b1f23a)) by Elwyn Benson
* update security mirror process ([9977419](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/9977419a753d2caea4ca7eb5cc4aa32ed4d2fd34)) by Tristan Read
* update user-facing state labels to match style guide ([c683a30](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c683a30ce2a88fc62ead49422b5ebed40e950e80)) by Uma Chandran

# **pre-release**  [6.67.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.66.0...v6.67.0) (2026-01-21)
### ✨ Features

* Show merged or closed MR for branch ([519bd0f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/519bd0f4bc4acbce3b9a0c6bab1d7567c3219862)) by Lennard Sprong

# **pre-release**  [6.66.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.65.1...v6.66.0) (2026-01-19)
### ✨ Features

* Add Open in GitLab to commits in Timeline ([895acd4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/895acd4646c76f9899b2344d1968605db47c4052)) by Lennard Sprong
* Display user avatars in commit history ([c5d0e89](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c5d0e897f71fd79a1bb2179b9ef6cb16753dfc10)) by Lennard Sprong

### 🔁 Chore

* clean up UseDuoChatUiForFlow feature flag ([b81a3bd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b81a3bd0d57d9a01258627b95663754d79d44fed)) by Andrew Fontaine

## **pre-release**  [6.65.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.65.0...v6.65.1) (2026-01-12)
### 🔁 Chore

* **deps:** update dependency semantic-release-vsce to ^6.0.20 ([ac71265](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ac71265773a2711c31c2381a68b3ec25c4f9e159)) by GitLab Renovate Bot

# **pre-release**  [6.65.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.64.1...v6.65.0) (2026-01-09)
### ✨ Features

* Display busy indicator on item in Pipeline tree ([c081b0c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c081b0c8621ec162c2e341eefcb895b23c462ad3)) by Lennard Sprong

## **release**  [6.64.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.64.0...v6.64.1) (2026-01-08)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.57.1 ([d07472c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d07472c129fa63ad61d040de40bc9416ab3c220e)) by GitLab Renovate Bot


### Language Server Release [8.57.0...8.57.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.57.0...v8.57.1)
### [8.57.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.57.0...v8.57.1) (2026-01-08)

#### 🐛 Bug Fixes

* Add refresh functionality for the mid-stream cutoff message ([a18ea6f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/a18ea6f4ddda919b0d5085fa9593289fd067812c)) by Olena Horal-Koretska
* remove AGENTIC_PLATFORM_GA_ROLLOUT_FLAG_DISABLED from AGENT_PLATFORM_CHECKS ([4bf4e28](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/4bf4e28751f0aeec90cf234b48a6ed26e4c705e6)) by Andrei Zubov

# **pre-release**  [6.64.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.63.1...v6.64.0) (2026-01-08)
### ✨ Features

* change agentic platform webview availability logic ([493688c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/493688cd0404041f7b8a8765acdceedb268f72e6)) by Andrei Zubov


### Language Server Release [8.55.0...8.57.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.55.0...v8.57.0)
### [8.56.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.55.0...v8.56.0) (2026-01-04)

#### ✨ Features

* **cli:** restyle remaining tool messages ([48902bd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/48902bddeff397d1acdcf82d714a62b2a9be06d0)) by Elwyn Benson

#### 📝 Documentation

* update markdown files to replace `Duo` with `GitLab Duo` ([0d6c2df](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/0d6c2df937337c4759ac3f2a009afcd2756d0ac9)) by Uma Chandran

#### ✅ Tests

* **cli:** add unit tests for tool components ([2294320](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2294320a9dc427906fcf1f6c9be9b7908b4d2395)) by Elwyn Benson

#### 🔁 Chore

* **cli:** swap command tool in experimental anthropic backend ([542f5a5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/542f5a5f015376981a17fb9109f645087378519a)) by Elwyn Benson
* update duo-cli readme with experimental disclaimer ([6999f16](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/6999f160eea3c29b507d3b5e46ff8ff4e0d1c801)) by Andrei Zubov


### [8.57.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.56.0...v8.57.0) (2026-01-07)

#### ✨ Features

* Add "Reload extension" button to usage quota check alert ([838679e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/838679e562d79e3ddb90ea42bd43e5d2076f4f79)) by Olena Horal-Koretska
* add agent_platform_ga_rollout check ([5f091b9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5f091b9f28114d337c9500bc31c82502a3139fe9)) by Andrei Zubov
* **cli:** add Opus 4.5 support to experimental anthropic backend ([2cb34a8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2cb34a8ad231447b5e3d27d53d770bb490bcd429)) by Elwyn Benson
* **cli:** allow passing file path for flow config ([bd26e6a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/bd26e6a0c04372ed35e9e1033651195bb6a273cd)) by Elwyn Benson
* **cli:** allow running outside gitlab project repos ([ea85e3c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/ea85e3c9f020a644a1cd950d470567c8aa34d439)) by Elwyn Benson
* update history UI ([7e3869f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/7e3869fe2bf7abfbbcf5716f1bd371db43f0e056)) by Juhee Lee

#### 🐛 Bug Fixes

* ensure shell commands use integrated IDE terminal ([dab87d3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/dab87d373f96e87561e1a2de039a368766ac88d5)) by Elwyn Benson
* use rootNamespaceId to fetch available models ([5021541](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/502154154ce7ecf947e5360ab2c557e6f90fcefb)) by Juhee Lee

#### 📝 Documentation

* add security process docs ([9070258](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/9070258f93f8ef185461127405809e941962e7b9)) by Elwyn Benson

#### 🔁 Chore

* adjust mcp config file log to clarify missing vs error ([8b69812](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/8b698124ba695ba61f6d8398843f10902691551f)) by Elwyn Benson
* followup to add code comment ([80d24fd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/80d24fd4a0a214ff443955d7f678c3e1e8223c8e)) by Elwyn Benson

## **pre-release**  [6.63.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.63.0...v6.63.1) (2026-01-07)
### 🔁 Chore

* **deps:** update dependency fs-extra to ^11.3.3 ([9190898](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/91908989d0c6c2b160cebe71f3f3f4661f94f5ed)) by GitLab Renovate Bot
* **deps:** update dependency sinon to ^21.0.1 ([af90cae](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/af90cae5016b11f402eb42cb5f4463116bc9a372)) by GitLab Renovate Bot
* **deps:** update dependency ws to ^8.19.0 ([8ea8c9b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8ea8c9bfe6953ed65145d63c449a4e81207e6777)) by GitLab Renovate Bot

# **pre-release**  [6.63.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.62.1...v6.63.0) (2026-01-06)
### ✨ Features

* support code suggestions usage cutoff in vscode ([1a4e13d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1a4e13ddb93d19bf08657b2431e5296edf3dffb2)) by Mohammed Osumah

## **release**  [6.62.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.62.0...v6.62.1) (2025-12-22)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.55.0 ([24c4fb0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/24c4fb0a95a0ce6aa8eeecdae468e5a36d772d56)) by GitLab Renovate Bot


### Language Server Release [8.54.0...8.55.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.54.0...v8.55.0)
### [8.55.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.54.0...v8.55.0) (2025-12-22)

#### ✨ Features

* add ability to get git status of current repo ([2bb1c34](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2bb1c34f553068cf1d1880f159a2888311a014d4)) by Elwyn Benson
* limit project selector size and wrap navigation bar on narrow panels ([624fbdc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/624fbdcff522ea80b626adc89b89b07fb9ba41d9)) by Enrique Alcántara
* **mcp:** Allow CRUD operations to MCP dashboard ([3d6e655](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3d6e655e6ef9c33d89ddf94d1dcb42536aa3f7d4)) by Dylan Bernardi
* Support code suggestions end-user usage cutoff ([c738cd8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/c738cd897a6bc3b104d3d937cc59a4a83af3f78a)) by Mohammed Osumah

#### 📝 Documentation

* add community contributor attribution to release process docs ([0d082b1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/0d082b129df2214ffead06e81e95250253f570ae)) by Elwyn Benson

#### ⚡ Refactor

* simplify script type handling in sync load scripts plugin ([970a533](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/970a533d99dac44a83eb89178578765ef68a9a9d)) by Enrique Alcántara

#### 🔁 Chore

* **deps:** update dependency @types/lodash to ^4.17.21 ([0c041e7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/0c041e7ad864853b5c761b915abcde3ecc81e323)) by GitLab Renovate Bot
* improve LLM handling of redacted content ([34887c0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/34887c044fcaed0a915559b31ab38be2c8787767)) by Elwyn Benson

# **pre-release**  [6.62.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.61.2...v6.62.0) (2025-12-19)
### ✨ Features

* Display indicator when refreshing sidebar ([f753965](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f75396501a9668b5fa456bfe3fa990f956030de3)) by Lennard Sprong

### ⏩ Performance

* Cache Branch Protection rules ([c139699](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c139699a1db93712aae7cc851670a484fae6c0e9)) by Lennard Sprong

## **release**  [6.61.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.61.1...v6.61.2) (2025-12-18)
### ⚡ Refactor

* Remove deprecated settings for status bar items ([5697581](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/569758119e025a593cba54013420aa3b64046eb2)) by Lennard Sprong

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.54.0 ([6d58318](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6d58318abf7c154a3bc5438ccfdf103681764c6d)) by GitLab Renovate Bot


### Language Server Release [8.53.2...8.54.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.53.2...v8.54.0)
### [8.54.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.53.2...v8.54.0) (2025-12-18)

#### ✨ Features

* Improve syntax highlight on code blocks ([ddd2161](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/ddd216174db93280692fcd53dfbac05b2cfd99fe)) by Enrique Alcántara

#### 🐛 Bug Fixes

* Create workflow with project_id OR namespace_id (mutually exclusive) ([510a064](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/510a064a5d62d3353cd34cc2a7b450b250734c9c)) by Olena Horal-Koretska

## **release**  [6.61.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.61.0...v6.61.1) (2025-12-17)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.53.2 ([217ede1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/217ede1a9adcb97ccccb4ad12b4403dcb6576b4f)) by GitLab Renovate Bot


### Language Server Release [8.53.0...8.53.2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.53.0...v8.53.2)
### [8.53.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.53.0...v8.53.1) (2025-12-17)

#### 🐛 Bug Fixes

* Fix timing issue with project selector ([e207290](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/e207290241a761053dba63f30c5368ebf37ac370)) by Olena Horal-Koretska
* Improve navigation bar positioning ([abb421b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/abb421b5776f2d0b994bea7f4028a29b0ba12db2)) by Enrique Alcántara
* **repository:** ignore git worktree metadata ([0631987](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/0631987806ddb7302633b59f5448c917748192bd)) by Benjamin Staneck

#### ⚡ Refactor

* extract `DefaultChatContextManager` to workspace package ([0dc94f8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/0dc94f8707daea1fad0ad591026cf69f6c9a66be)) by Elwyn Benson
* extract AIContextProvider base class to workspace package ([cd32e36](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/cd32e360156d9c5b8bdcb0fc41e2e91358ea5cf0)) by Elwyn Benson

#### 🔁 Chore

* **cli:** add `CLIAiContextManager` implementation ([1d775c7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/1d775c7fccb19871c32697be52254ff6ceea7071)) by Elwyn Benson
* **deps:** update `ink` to 6.5.1 ([5f37916](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5f3791669de432616432cf0010cefa0f643bc103)) by Elwyn Benson
* **deps:** update dependency semver to ^7.7.3 ([6295191](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/629519180bf0832121bdd9893a1c218697b1a78f)) by GitLab Renovate Bot


### [8.53.2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.53.1...v8.53.2) (2025-12-17)

#### 🐛 Bug Fixes

* **chat:** Fix resizing panel bug ([0a02726](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/0a02726ee54159079a22032bfbccd841447e416a)) by Enrique Alcantara

# **pre-release**  [6.61.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.60.5...v6.61.0) (2025-12-16)
### ✨ Features

* Add user setting for diff tab behavior on DAP ([4b0fd8c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4b0fd8c78af77d2b5ef0ea1b315b4016ea5de0a4)) by Tristan Read

### 🔁 Chore

* **deps:** update dependency ts-jest to ^29.4.6 ([42d5082](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/42d5082da6df3855078cbf44c5b3338af632d293)) by GitLab Renovate Bot

## **release**  [6.60.5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.60.4...v6.60.5) (2025-12-15)
### 📝 Documentation

* Update README.md to clarify difference between chat and flow tabs ([1458e25](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1458e259d6c0ba31c5a57071a19d086d9d3115f0)) by Amr Elhusseiny
* Updates all mentions of Duo to use GitLab Duo ([ed60a81](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ed60a81e1891842ad06c51ba984b2c3e9f1f11d6)) by Uma Chandran

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.53.0 ([8e93e5e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8e93e5e01fb9bb27259206377e9ea93c90f38e52)) by GitLab Renovate Bot


### Language Server Release [8.52.0...8.53.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.52.0...v8.53.0)
### [8.53.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.52.0...v8.53.0) (2025-12-15)

#### ✨ Features

* **cli:** prompt history backsearch ([24ed5b3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/24ed5b314c5a343765e0fddcd7726b32c1f4572b)) by Elwyn Benson
* load workflow history ([423feb3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/423feb3d4e09fe42ffd1fba5116aea2d51c54467)) by Juhee Lee
* Support mid chat end-user usage cutoff experience ([89962ab](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/89962ab5174d4c8dfc991ef8b29bc70796f9adde)) by Olena Horal-Koretska
* Support multiple websocket connection ([55e770f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/55e770f89e1d3e9045c3a271f1a328476d308d37)) by Frédéric Caplette
* Support new chat end-user usage cutoff experience ([8b8436e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/8b8436e5348a9882b2807887a63ff0da4a7a3c9c)) by Olena Horal-Koretska

#### 🐛 Bug Fixes

* **cli:** file search arrow key double events ([280a541](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/280a5419666d01cfe58667fb3b2e996eb379419e)) by Elwyn Benson

#### ✅ Tests

* **cli:** fix flakey CLI test ([e5090b1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/e5090b1b01b0b1a10a65342451dcf5a52243ead4)) by Elwyn Benson

#### 🔁 Chore

* Abstract util function for connection states ([5c95640](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5c956404dc8eed9183f85584654d08d27d9134b3)) by Dylan Bernardi
* **cli:** add simple AGENTS.mds to cli packages ([55ae50b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/55ae50b292a07af682628502738c7888b57f6d50)) by Elwyn Benson
* **cli:** use websockets by default in CLI ([0e10e5c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/0e10e5c8cc4eaa572933c5e9ddb052faee68ab2e)) by Elwyn Benson
* **deps:** update dependency commander to ^14.0.2 ([45571d5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/45571d5332a528fb65a7ec04ac21a720863d8ef9)) by GitLab Renovate Bot

## **pre-release**  [6.60.4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.60.3...v6.60.4) (2025-12-10)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.52.0 ([055b7f8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/055b7f82f28ca8b31514f894e44f89221f54a521)) by GitLab Renovate Bot


### Language Server Release [8.50.1...8.52.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.50.1...v8.52.0)
### [8.51.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.50.1...v8.51.0) (2025-12-09)

#### ✨ Features

* add BM25 ranking and context grouping for grep search results ([3ec50aa](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3ec50aa6d3e46c8a147ed0104cb22b42447efca8)) by Alexander Chueshev
* Add project selector component ([68345ad](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/68345ad316ee19d36e5c60df0215a46207236be9)) by Olena Horal-Koretska
* **cli:** initial restyling of tools UI ([5c2d7b2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5c2d7b2b53f0120dbed0509533a4fcf5d1115607)) by Elwyn Benson
* parse flow config schema version from config ([fea0eaf](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/fea0eaf6547c0848c321f4fce36179fb50450f21)) by Tristan Read
* Release useDuoChatUiForFlow feature flag ([7365601](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/7365601dcb512268dd9fc5a0805a73bef61c35c5)) by Frédéric Caplette

#### 🐛 Bug Fixes

* **cli:** don't incorrectly freeze tool approval messages ([63a63ca](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/63a63caac26a2709a9035867600361ac52b78e5e)) by Elwyn Benson
* prevent DAP reading binary files ([d7616ce](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/d7616ce5d2c8ed56538b03e87b846bdb6ebb6f3b)) by Elwyn Benson


### [8.52.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.51.0...v8.52.0) (2025-12-10)

#### ✨ Features

* **flow:** flow execution infrastructure ([c1d34e6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/c1d34e6c02e703628160bf99e57f92f77e734e70)) by John Slaughter
* Run workflow with selected project ([19e99b0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/19e99b0072816cc3fbc8bf7a7b3a35570ee5f675)) by Olena Horal-Koretska

#### 🐛 Bug Fixes

* **cli:** set restrictive file permissions (0600) on storage.json ([0db1c5d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/0db1c5dba26731f13f9c2fe932e194c73b8555a1)) by dappelt

#### ⚡ Refactor

* consistently set file mode when writing the file instead of using chmod ([eda1c2a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/eda1c2ac114534dc75646f591e2e4b8ef3afe39a)) by dappelt

#### ✅ Tests

* expect writeFile to be called with file mode ([8076b76](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/8076b76119972cddfb39fd7643414917e60f82b7)) by dappelt
* Improve file permission tests to run on Windows ([4a5d29c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/4a5d29cbfbb4b514c1ef68e1a8353d5128b86f6c)) by dappelt

#### 🔁 Chore

* Apply 1 suggestion(s) to 1 file(s) ([fec511a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/fec511a86cedf61cb549f44c9b980b1778b67630)) by Dennis Appelt

## **pre-release**  [6.60.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.60.2...v6.60.3) (2025-12-09)
### 🔁 Chore

* use semver for changelog version comparision ([5340fa9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5340fa90a04f9dfa621f08efa40fb4bea5d776e2)) by Juhee Lee

## **release**  [6.60.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.60.1...v6.60.2) (2025-12-08)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.50.1 ([ecd38e6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ecd38e640a55398dddbf41aea7c5bf414cffad15)) by GitLab Renovate Bot


### Language Server Release [8.49.0...8.50.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.49.0...v8.50.1)

### [8.50.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.49.0...v8.50.0) (2025-12-05)

#### ✨ Features

* **cli:** add prompt history scrolling ([870b84c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/870b84c28881656a0375d708f2df8ea259b61995)) by Elwyn Benson
* Update flow prompts and working text ([d091050](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/d091050b8fa7047f919c68048e95a08564e9eb73)) by Frédéric Caplette

#### 🐛 Bug Fixes

* **cli:** Correctly read gitlab base url from config or envs ([d76e0ea](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/d76e0eaaeae94e5ba66ce2b41e1f9f17f7e4e43e)) by Dennis Meister
* **mcp:** Auto scrolling fixes and logs appearing in order ([4632307](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/4632307e1bee56faf21dd23b85ae94444fd8f233)) by Dylan Bernardi

#### 🔁 Chore

* set up webview storybook test ([36eab64](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/36eab64a770bca1e15a8a23d0b2be8d65a452681)) by Juhee Lee


### [8.50.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.50.0...v8.50.1) (2025-12-08)

#### 🐛 Bug Fixes

* Update tool approval status correctly ([b196954](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/b19695474e8a50e5c3a20455b47411e011a258a8)) by Olena Horal-Koretska

#### 🔁 Chore

* **deps:** update dependency @gitlab/duo-ui to ^15.0.5 ([1a24832](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/1a24832499eb7e1f0743c63e24e6117ad79992a5)) by Olena Horal-Koretska

## **pre-release**  [6.60.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.60.0...v6.60.1) (2025-12-08)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.49.0 ([780e71d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/780e71dc4ca3dd9a7d917dc3ebe50d71848750fc)) by GitLab Renovate Bot


### Language Server Release [8.48.0...8.49.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.48.0...v8.49.0)
### [8.49.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.48.0...v8.49.0) (2025-12-04)

#### ✨ Features

* Capture streaming time metric ([5aad02c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5aad02c9c34429c69ef17ae672d7267e6adb38b0)) by Enrique Alcántara
* improve conversation start screen ([04876ca](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/04876ca9f70b2a9eab1380fb1e6beede116eba79)) by Andrei Zubov

#### 🔁 Chore

* **cli:** send errors to Sentry ([7d9c887](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/7d9c8877318e11dc6496e33a8e564474c9e9e528)) by Elwyn Benson
* **deps:** update dependency fs-extra to ^11.3.2 ([251f706](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/251f7060210d2c9a6ffffd6b3b80e5df757010d5)) by GitLab Renovate Bot

# **pre-release**  [6.60.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.59.0...v6.60.0) (2025-12-04)
### ✨ Features

* **flow:** integrate flow builder webview behind feature flag ([79cf558](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/79cf558019aae6f163969ca1cde26509b2e04f13)) by John Slaughter

### 🔁 Chore

* **deps:** update dependency semantic-release-vsce to ^6.0.18 ([6657e00](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6657e0051c2000e92ee9900ef694e8e1c750f77f)) by GitLab Renovate Bot


### Language Server Release [8.46.1...8.48.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.46.1...v8.48.0)
### [8.47.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.46.1...v8.47.0) (2025-12-03)

#### ✨ Features

* Add plugin controller for the project selector ([82f926f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/82f926f977c434bf190e2acaf5d22987e657a351)) by Olena Horal-Koretska
* add prompt editor and uri based flow loader ([a07709b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/a07709bb85a9fb4ca6a6e0025201256bc12413b5)) by John Slaughter
* Create `AgentPlatformProjectService` for DAP project selector ([9b6ba9c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/9b6ba9cccd12ec37c80769aa0e6ef82e4005e417)) by Olena Horal-Koretska
* create navigation and update layout ([f68f8bd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/f68f8bd1d67fd2c71054641d37593671e656961b)) by Juhee Lee
* Display friendly type errors in logs ([f7794e8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/f7794e8adc535a5842a064bab3b22cbe1ab8136e)) by ŁUKASZ KORBASIEWICZ
* support `run_shell_command` action ([629b629](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/629b62987956a44b9975643b485c661e1201feaf)) by Elwyn Benson
* support AGENTS.md files ([1868191](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/1868191943bee905e43e882ec00fb57a3ab5af03)) by Elwyn Benson
* use duo context exclusion on KG ([0895847](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/08958478c1a37fecef2ecb5b1db4b119a8cd0a5b)) by Allen Cook

#### 🐛 Bug Fixes

* **cli:** re-enable support for ctrl+J line breaks ([807d6cf](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/807d6cfd4acce8cb605d3fdff473aaf6dde45adf)) by Elwyn Benson
* **mcp:** Provide workspace path to MCP dashboard ([9dc987b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/9dc987b25f4a3b31408f92d9f8582850e0a9820c)) by Dylan Bernardi

#### 📝 Documentation

* update file dev_environment.md ([8fc3399](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/8fc339961706210ad0ed4654e79d4077b4ae50c7)) by Roman Eisner

#### ✅ Tests

* **cli:** add helper script for testing docker runs ([cfbd015](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/cfbd0153b10cc84baef2a5f76450c1a50c702b58)) by Elwyn Benson

#### 🔁 Chore

* **cli:** add JetBrains debug config ([3e7408f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3e7408fc3711de363f110171913663808349b94c)) by Elwyn Benson
* remove duplicated editorconfig rules ([324de92](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/324de927936a8c37a8d695b23e3f60cc856573ba)) by Tan Le


### [8.48.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.47.0...v8.48.0) (2025-12-03)

#### ✨ Features

* **cli:** prune log files after 28 days ([f0b3f92](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/f0b3f9271d89e6f06af6dddd13f091d8ab14c339)) by Elwyn Benson
* **cli:** restyle user/assistant messages ([d9861ee](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/d9861ee1f9e631c080059ddaecb38142297ae235)) by Elwyn Benson
* **cli:** support `AGENT_PLATFORM_FEATURE_SETTING_NAME` option ([cfbbc77](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/cfbbc779d24392d87372242a11690ad360b54030)) by Elwyn Benson

# **pre-release**  [6.59.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.58.3...v6.59.0) (2025-12-02)
### ✨ Features

* support shell command without args ([4fd5fa5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4fd5fa52a98f5c836e58d706bbeb5a716275d58f)) by Elwyn Benson

## **release**  [6.58.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.58.2...v6.58.3) (2025-12-01)
### 🐛 Bug Fixes

* correct comparison in remote parser when using custom ports ([064b58e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/064b58e8295d9d81cd4033b616036f8f804ba7cb)) by Mattias Michaux

### 🔁 Chore

* bring back force-version-update plugin ([ffe2ba5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ffe2ba5e399e4928dc5bf3aa199098e127fd2e08)) by Andrei Zubov
* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.46.1 ([3bff9d1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3bff9d1b333984ea05790c3ffae687e0d4ec540f)) by GitLab Renovate Bot
* restore Dangerfile for GraphQL compatibility checks ([8bdab53](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8bdab537a6e34056c727aec0d042c7bf032285bb)) by Denys Mishunov


### Language Server Release [8.46.0...8.46.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.46.0...v8.46.1)
### [8.46.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.46.0...v8.46.1) (2025-11-28)

#### 🐛 Bug Fixes

* check for TTY before calling setRawMode in CLI ([d1327af](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/d1327af9ccc88c7875d6a8b9c432dec2f9651024)) by Mikołaj Wawrzyniak

## **pre-release**  [6.58.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.58.1...v6.58.2) (2025-11-28)
### 📝 Documentation

* updates frontmatter to reflect latest stage and group ([d06af96](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d06af968a230bc004077526eb8b1b7f595d38721)) by Uma Chandran

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.46.0 ([73a8aa2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/73a8aa2a0a8151ad94f1defc1005bdcae01e2dd3)) by GitLab Renovate Bot


### Language Server Release [8.45.0...8.46.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.45.0...v8.46.0)
### [8.46.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.45.0...v8.46.0) (2025-11-28)

#### ✨ Features

* Add persistent storage for agent platform project ([54a3cea](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/54a3ceaf24464fb8021f9efd72c5a75ee77cd20d)) by Olena Horal-Koretska

#### 🐛 Bug Fixes

* Improve message rendering performance ([7611001](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/761100147b3645b5fadfc334be38731df7d74a69)) by Olena Horal-Koretska
* protobuff fileds case conversion ([3599ccf](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3599ccf3bcbe3f578530b6adeefa264045bfbde2)) by Mikołaj Wawrzyniak
* Return relative file path in the tool response ([a916cc3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/a916cc3e0f9ee3f12848e1e3f2ce46c972bb2641)) by Olena Horal-Koretska

#### 🔁 Chore

* add debug config for cli ([b4187b7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/b4187b765bf63cb785d089309a2e8eee5efd16a6)) by Andrei Zubov
* dont depend on DWS client twice ([79117f5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/79117f51ebf0b6d2f9bcaf610b23e0ee589fa6da)) by Elwyn Benson

## **release**  [6.58.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.58.0...v6.58.1) (2025-11-27)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.45.0 ([f342fec](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f342fecde1f7370ea43992a746e25b129d373848)) by GitLab Renovate Bot


### Language Server Release [8.44.0...8.45.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.44.0...v8.45.0)
### [8.45.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.44.0...v8.45.0) (2025-11-27)

#### ✨ Features

* **cli:** use kitty protocol in supported terminals ([ab9d16a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/ab9d16a10061602e36c80e25d38da4366ed5a15c)) by Andrei Zubov
* Support resuming failed and stopped flows ([cc56c13](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/cc56c13adf26d40cf85f0d73d79ce68e672d5650)) by Frédéric Caplette

#### 🐛 Bug Fixes

* add back latestVersion to agents queries ([5dc5a0b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5dc5a0babbe3c171c4ab9669981215216af85c32)) by Lindsey Shelton
* Add inline tool approval flow for non-ChatFlow modes ([8c61ff5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/8c61ff555cca229afca9812614cfab9920bc0869)) by Frédéric Caplette
* **cli:** Remove duplicated existing_session_id in subcommand ([3ce8bcc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3ce8bccc183c05a2cae4c981613356ccc3e625f3)) by Tian Gao
* **cli:** replace diff lib with new implementation ([6eab564](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/6eab5643b5406a2c971423debba093c3b5620f91)) by Elwyn Benson
* Reintroduce root namespace for obtaining models ([eba14d1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/eba14d19bb6e562e1bb2b90138adcfc1841d6047)) by Enrique Alcantara
* Remove DuoChat Health Check ([7a92ed8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/7a92ed88645124376f984e2028e111f282e5f81a)) by Dylan Bernardi
* resolve custom ssh aliases ([3dd0632](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3dd0632a060936441fa32b339d588587104fdc41)) by Karl Jamoralin

#### ⚡ Refactor

* **cli:** use `UserService` in CLI ([30d4bdd](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/30d4bdd7c88134f475eb386499f93750811d0e6b)) by Elwyn Benson

#### ✅ Tests

* Define stories for core duo-ui-next components ([6367a33](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/6367a3350e4e5940b15a3dc288bf58d73c174ae9)) by Enrique Alcantara

#### 🔁 Chore

* Code review feedback ([20f56c8](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/20f56c89e14c3e72cd1102837ee07212bfab8831)) by Enrique Alcántara

# **release**  [6.58.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.57.7...v6.58.0) (2025-11-25)
### ✨ Features

* update LSP to 8.44 ([10bf8d4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/10bf8d45aa0307b9a1e2dcf1ce5d893e99237603)) by Juhee Lee


### Language Server Release [8.43.0...8.44.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.43.0...v8.44.0)
### [8.44.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.43.0...v8.44.0) (2025-11-25)

#### ✨ Features

* **cli:** support nested `cwd`, refactor init code ([8b3896b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/8b3896bc0a25c04db95f2cd14b24bcd5314c6ba4)) by Elwyn Benson
* **git:** support http proxy env variables for git commands ([8c58b02](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/8c58b020bdbdc916bfcb77e4710bf08c20a7d490)) by Mikołaj Wawrzyniak

#### 🐛 Bug Fixes

* Hotfix for loading available models ([d4a0b7a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/d4a0b7a073c7a70a1a3e6ffb505476681db9f623)) by Enrique Alcantara

## **pre-release**  [6.57.7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.57.6...v6.57.7) (2025-11-25)
### 🔁 Chore

* **deps:** update dependency @semantic-release/gitlab to ^13.2.9 ([9f50339](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9f50339fb6c6e9e46dadc4d020a60b5ca3c1d539)) by GitLab Renovate Bot
* **deps:** update dependency glob to v13 ([5dd3bb4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5dd3bb4101bb2184692ba5f65a7ecc9296a79de1)) by GitLab Renovate Bot
* **deps:** update dependency ovsx to ^0.10.7 ([d641664](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d641664e6b51a0432e88507af42e5ea17d8199c9)) by GitLab Renovate Bot
* roll documentation linting tool versions forward ([f3b8ff0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f3b8ff03dd37d35388ae692ab7c1c78862cd834d)) by Evan Read

## **release**  [6.57.6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.57.5...v6.57.6) (2025-11-24)
### ⚡ Refactor

* remove languageServerWebIDE feature flag ([b191533](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b191533fb254d84b1adf1a65fa19d90a3e7aa6be)) by Mohammed Osumah

### ✅ Tests

* Fix incorrect ArrayBuffer typing ([e3ffaad](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e3ffaad55df29071faaf9585bd410b96e5aba7eb)) by Enrique Alcantara

### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.43.0 ([07c05dd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/07c05dd8113979f42746cc2ce00c1825835cf566)) by GitLab Renovate Bot
* **deps:** update dependency @gitlab/needle to v1.5.1 ([5931d30](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5931d30e55e6e23ca8da14591612bc5ec22cffed)) by GitLab Renovate Bot
* **deps:** update dependency esbuild to ^0.27.0 ([cc8dc01](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cc8dc019ae5a873a9bc3028280410e5582dfd9d3)) by GitLab Renovate Bot
* **deps:** update dependency mocha to ^11.7.5 ([6452cce](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6452cce897f4e44bef4ee417e0f2bf19c4e5e9d6)) by GitLab Renovate Bot
* **deps:** update dependency mocha to ^11.7.5 ([116c32d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/116c32dcf5818de5906560cb61d6b55969f6556f)) by GitLab Renovate Bot
* **deps:** update dependency semantic-release-vsce to ^6.0.17 ([2704e9e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2704e9eb54bc1aa06a43761dc8a46b346afe9f03)) by GitLab Renovate Bot
* **deps:** update dependency ts-jest to ^29.4.5 ([d53c7d6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d53c7d630a9862ecafa9aef431e2417bf31802eb)) by GitLab Renovate Bot
* **deps:** update dependency typescript to ^5.9.3 ([c7285f1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c7285f115a3aa038a4c072df94cab4b66aa3d94e)) by GitLab Renovate Bot
* **deps:** update linting ([cf3b18c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cf3b18c0f26b56596ddfc33a29c59466be3c59be)) by GitLab Renovate Bot
* Fix prettier formatting issues after update ([22e02cf](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/22e02cf3a187a32f1849a145258b7d6c17f902d3)) by Enrique Alcantara


### Language Server Release [8.42.0...8.43.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.42.0...v8.43.0)
### [8.43.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.42.0...v8.43.0) (2025-11-24)

#### ✨ Features

* add user-level chat rules ([b7cdcfb](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/b7cdcfb5d6a18fbc9a3ba98cb42518c03bf58c65)) by Allen Cook
* **chat:** Improve tool parameter visualisation ([e4f933b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/e4f933b9dab0b83ebca2c2dae73911a1a573abea)) by Enrique Alcántara
* **cli:** support chat-rules.md custom instructions ([fc47884](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/fc47884650742fe95cc7f64fa14420a49a750043)) by Elwyn Benson
* **dap:** create suggestion component ([bb00992](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/bb009926ec4a4ac2d67094c3af8630f9682664de)) by Juhee Lee
* **flow:** add node configuration and refactor v1 persistence ([f78602c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/f78602c97a84d365f3520892b4610d143a120b3b)) by John Slaughter
* **flow:** init visual workflow editor implementation ([dc2e5c3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/dc2e5c355c0d0a7e9d600b54084d9fcfea8d3709)) by John Slaughter
* Rename performance telemetry events ([cc4e0fc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/cc4e0fcd18426178ba78edf98d818d9d36410f66)) by Enrique Alcantara
* Specify source in duo agent platform events ([ec00b65](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/ec00b6527a9963fb924bfcefa04fd4aa9cd94d82)) by Enrique Alcantara
* Switch to `websocket` as default connection type in Node executor ([fad601c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/fad601cf9146f98ad9ce0fd59d24aef2ba9f2282)) by Olena Horal-Koretska

#### 🐛 Bug Fixes

* Add healthCheck to persistent storage instead of cache ([5cf0ea2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5cf0ea202368813fa7c5f2097cbdf369a157726f)) by Dylan Bernardi
* build failure from fdir update ([483740a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/483740ac9eaf47ab9d65cdfff9ffe73b2bb5b025)) by Juhee Lee
* **cli:** prevent 'freezing' messages incorrectly ([151b7af](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/151b7af16f3f959f0ef36262de1e75b619bb953c)) by Elwyn Benson
* custom agents to respect version pinning instead of using latest ([17cd9e9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/17cd9e90dc494152cf8e1898a1c06e0bd52f5f37)) by Jannik Lehmann
* Flows in new UI always start as chat ([f7faa94](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/f7faa941f810676e9f85a83dbb4eee3cad582bdc)) by Frédéric Caplette
* set content of repository and directory contexts ([5c4eff1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5c4eff18478236dce4b5a99c075d5dc8263cbd8f)) by Pam Artiaga
* Update System context in UI once available ([84b5c28](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/84b5c2846cd055fa04f11ae4be0df1689ae283c3)) by Olena Horal-Koretska
* Uses root group instead of namespace ([2785c18](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2785c1861d576241c008a3086074a33481a59c9c)) by Donald Cook

#### 📝 Documentation

* Add instructions for running the LSP server by using 'npx' ([db8d068](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/db8d0683edabef0e39fcb04e2b7f6bb3ac3e769c)) by Evan Read

#### ⚡ Refactor

* extract user rules to workspace package ([eff9709](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/eff97097a8b56ad9d219539f87a36d88e7977ed6)) by Elwyn Benson

#### 🔁 Chore

* add webviewId for DAP Duo UI Next and update pkg name ([86336b2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/86336b2003bbba9aecf96e080c7634fe59bfa1e9)) by Juhee Lee
* remove use of use_duo_context_exclusion FF ([d9625f5](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/d9625f540f27b5ef0b3effe5fd8902bceaa8c0f8)) by Allen Cook
* roll documentation linting tool versions forward ([edcc5ed](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/edcc5ed04d49bcbc054ac2511e4389a03a3c86a6)) by Evan Read
* setup storybook in unified webview ([2d82503](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2d8250360ca7ce144f9450539d66401e626fabc6)) by Juhee Lee
* update duo-cli readme ([5d1c601](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5d1c601931ed77eb9c7e8c0be8c77cf3212de65d)) by Andrei Zubov
* Use camelCase in shell context provider ([2eeb7df](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2eeb7df7caa1205eb0c28d5c480a50577d2d591e)) by Olena Horal-Koretska

## **pre-release**  [6.57.5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.57.4...v6.57.5) (2025-11-20)
### 🐛 Bug Fixes

* trigger jobs can be executed and retried ([7334f65](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7334f65a9b78d89c2df1683286b3d7503fefe1b5)) by Tim Ryan

### 🔁 Chore

* add feature flag for dap next and setup webview ([852db6e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/852db6ea58944012cfa5ae3fc8202259845d7a5c)) by Juhee Lee
* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.42.0 ([1ae9028](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1ae9028fe23eff4bb2ea63d6bbd94b89d6362a50)) by Enrique Alcántara
* update pre-release docs ([bee335d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bee335d4f87b28c7c7edce1fd54146df13876019)) by Andrei Zubov


### Language Server Release [8.41.0...8.42.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.41.0...v8.42.0)
### [8.42.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.41.0...v8.42.0) (2025-11-18)

#### ✨ Features

* Add flow plan iterations in new UI ([157121c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/157121c20bfa559a6f438d735f540178bcff9b36)) by Frédéric Caplette
* **mcp:** surface cause in MCP tool execution failures ([6ae6619](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/6ae6619d93de69b4dcb918c148b54069ce03e95f)) by Tian Gao
* use the withDuoEligible in /include project in duo agentic chat ([02c0a19](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/02c0a19ba836c456cb4b1981751c2cc769efb30f)) by Tian Gao

#### 🐛 Bug Fixes

* **cli:** Avoid showing error when user aborts workflow ([e6429bf](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/e6429bf2ccd604866e454b148569ec82c52782b4)) by Anna Springfield
* **code-suggestions:** ignore abort errors in circuit breaker ([2f87780](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2f8778077db593caa2761a7ee92e984184cfe147)) by John Slaughter
* **mcp:** Respect certificate and proxy options for remote MCP servers ([2edeac7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2edeac7daa68303a01536abb1b35a2092d347ea5)) by Erran Carey
* Update editor selection context provider ([a09907b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/a09907b4186e199df4f9af31d620ad6a4d36a315)) by Olena Horal-Koretska

#### 📝 Documentation

* Add information about setting additional code completion languages ([881b686](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/881b6863e1f704c4fe45230933de8d4923431494)) by Evan Read
* document nodejs versions across LS ([de5e1cf](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/de5e1cf3c846ada0d65ab71c30bc64069c11ec75)) by Tristan Read

#### 🔁 Chore

* remove unused pkg config ([a833212](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/a833212a33642470d7a536ec643809b282e8585d)) by Tristan Read
* replace emoji shortcut with emoji characters ([e694c8f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/e694c8f5a5a5cab705abdb987141f377aa475d7f)) by Juhee Lee

## **release**  [6.57.4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.57.3...v6.57.4) (2025-11-14)
### 🔁 Chore

* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.41.0 ([79ef4bc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/79ef4bc131d5af93487e7d9804a5b5c329555d17)) by GitLab Renovate Bot


### Language Server Release [8.39.0...8.41.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.39.0...v8.41.0)


### [8.40.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.39.0...v8.40.0) (2025-11-14)

#### :sparkles: Features

* **cli:** support --existing-session-id for TUI ([c74a055](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/c74a05592aec5f5498ff8dd244f0c5600423853b)) by Elwyn Benson

#### :bug: Bug Fixes

* fix npm install by moving patch-package to dependencies ([4062dfe](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/4062dfe12086f2962c89e05216cdfa2f182c6593)) by Andrei Zubov


### [8.40.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.40.0...v8.40.1) (2025-11-14)

#### :bug: Bug Fixes

* **mcp:** Disable custom fetch for SSE and streamable HTTP clients ([1eb1134](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/1eb1134abeb3eee4cf1599bac2941e456a09ac6b)) by Erran Carey


### [8.41.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.40.1...v8.41.0) (2025-11-14)

#### :sparkles: Features

* add Windows ARM64 binary support ([acc7864](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/acc7864c1787680c83514a4281f25af6a65f72bd)) by Karl Jamoralin

#### :bug: Bug Fixes

* add git user.name config for proper attribution ([47a651b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/47a651b991b88833e3712834e566ffe8a5ded1e5)) by root

## **release**  [6.57.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.57.2...v6.57.3) (2025-11-14)
### 🔁 Chore

* add missing patch-package dependency ([31b347a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/31b347a022cb4bf2937d72021f94f334d8bdbec5)) by Elwyn Benson
* **deps:** update dependency @gitlab-org/gitlab-lsp to ^8.39.0 ([6bec849](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6bec849fefd96e41720d0dd958806d9c86a7404e)) by GitLab Renovate Bot
* **deps:** update dependency simple-git to ^3.30.0 ([0cec5d4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0cec5d4bf5177532f3f8959f33b0194eb163890f)) by GitLab Renovate Bot


### Language Server Release [8.37.0...8.39.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v8.37.0...v8.39.0)
### [8.38.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.37.0...v8.38.0) (2025-11-13)

#### :sparkles: Features

* Add current file relative path as agentic chat context ([c024e6e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/c024e6e8be7b9a5ef4c82e189a868bf7635d13a7)) by Anna Springfield
* **cli:** add missing os_information context ([7e3afd1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/7e3afd169887df25ba1792e93ee141df4f0d556e)) by Mikołaj Wawrzyniak
* improve text editing and navigation in Duo CLI ([8d80226](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/8d802262f0bb218217397ff43a5e6799546b6eb8)) by Andrei Zubov
* Support plan approval in Chat ([4ab3d3e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/4ab3d3e5eb9e07939ae4d3ace919b08cd5408178)) by Frédéric Caplette

#### :bug: Bug Fixes

* **cli:** write to log file async, don't block main thread ([88e58b6](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/88e58b66c706d4efb0029dc634675f826e2a7338)) by Elwyn Benson
* exclude some sensitive env vars from `run_command` process ([464da1a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/464da1a270de641a3adfd95229be9917f4e7d31d)) by Elwyn Benson
* **mcp:** handle triple underscores in tool names for McpToolName validation ([1f915f7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/1f915f7911c2f181fb23244640a423057d3ff183)) by John Slaughter
* Separate error and logs for run_command tool ([6cd987f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/6cd987fad54283044ee219199e0e3570204aaa3c)) by Olena Horal
* **windows:** Spawn STDIO MCP servers in the background ([5ff053f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/5ff053f27762199190d0c7c8a6ddd1376073bcab)) by Erran Carey

#### :white_check_mark: Tests

* Fix web browser integration tests ([b5f8f9e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/b5f8f9eeeefc5888d01e3bfdc17f2045645c7587)) by Enrique Alcántara

#### :repeat: Chore

* add extra debug logging when no workflow ID is returned ([dd9ff33](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/dd9ff3356c7bbe95d8db56abd3bc1322972b3e0b)) by Elwyn Benson
* **cli:** force default connection type to grpc for now ([2b1d43b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2b1d43b4aebe9adb79ebd5f4d4b8d2d441bd98b4)) by Elwyn Benson
* **cli:** remove no-api CI mode ([ce3c1b0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/ce3c1b01b0e4621095bb531dc844c2cb16c2a2d7)) by Elwyn Benson
* Expand linted files and autofix ([3c82e2d](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3c82e2d4aa96d453c00636ebcc7d1b88b4699e15)) by Anna Springfield
* Fix pre-commit prettier hook to match CI checks ([8dfcbcc](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/8dfcbcca385c4ca771e8b7172b8825ee89ee09e2)) by Anna Springfield
* switch duo-cli to trusted publishing ([6e3517c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/6e3517cc6c61807d04d19e96c74f5ea3ad37a174)) by Andrei Zubov


### [8.39.0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/compare/v8.38.0...v8.39.0) (2025-11-14)

#### :sparkles: Features

* **chat:** Support foundational agents in extensions ([a3398df](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/a3398df120cc46fd1153a5bb92a0953244bbb8e5)) by Eduardo Bonet
* **dap:** initialize new DAP webview landing page ([1aa8984](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/1aa8984fb185c283bec43299a9582a933aee52e4)) by Juhee Lee
* **mcp:** Respect proxy and certificate options in remote MCP clients ([0d7230f](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/0d7230fec2b86536cab376d419a1c22f6707e438)) by Erran Carey

#### :bug: Bug Fixes

* **cli:** stop default 'insecure' value triggering validation ([d304154](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/d304154581ca1187a8844520808991bd580b7a20)) by Elwyn Benson
* Small papercuts in agentic chat panel ([bbd2d89](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/bbd2d89005f93b76f72ee7f5f5f381c7c41da7ed)) by Enrique Alcántara
* Track AI context file content with FileStateTracker ([a58f66c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/a58f66ce04abcb09f0da2faec06ce4cbcbc54138)) by Olena Horal-Koretska

#### :zap: Refactor

* **cli:** spring cleaning, organise files ([b3651f7](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/b3651f79a82d915c79b2fd2a96fccaafca086fc1)) by Elwyn Benson
* rename `HeartbeatManager` to `DailyActivityTracker` ([7145b1b](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/7145b1b6816c076c7ca845a6dd38db553466c03b)) by Olena Horal-Koretska

#### :repeat: Chore

* Add feature flag for flow ui ([ec242b0](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/ec242b036348a5a8644066ea3d579f2a823a3153)) by Frédéric Caplette
* Add WebSocket client heartbeat ([76cc6c2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/76cc6c24a17e44f3e6bf485493ac6d14a8a42e66)) by Olena Horal-Koretska
* close gRPC connection when disposing grpc_client ([4d4b6c4](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/4d4b6c4b5151712a5c959e8ebc14ca222447670d)) by Dylan Griffith

## **pre-release**  [6.57.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.57.1...v6.57.2) (2025-11-13)
### 🔁 Chore

* extract and include LS release notes inside the changelog ([5100976](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5100976d84b84224f3ccfbbaf003e87cbc3cdf6e)) by Juhee Lee

## **release**  [6.57.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.57.0...v6.57.1) (2025-11-11)

# **release**  [6.57.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.56.0...v6.57.0) (2025-11-07)

### Features

* Update GitLab LSP to 8.35.0 ([ebce324](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ebce32472264271de45e8c8f80586928c081269a))

# **release**  [6.56.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.55.0...v6.56.0) (2025-11-07)

### Features

* Update GitLab LSP to 8.33.1 ([92b4be3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/92b4be32cb90afec35d441d34567766a9b346398))

# **pre-release**  [6.55.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.54.0...v6.55.0) (2025-11-06)

### Features

* **mcp:** Enable MCP dashboard webview ([37ef3b5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/37ef3b55cb2f972cf4baebb215a9304c60f68880))

# **pre-release**  [6.54.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.53.0...v6.54.0) (2025-11-05)

### Features

* Re-authenticating does not ask for delete ([5db6d01](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5db6d0189591f90d0ca7568165243f2b5a56239f))

# **release**  [6.53.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.52.0...v6.53.0) (2025-11-03)

### Features

* Set WebSocket as default in extension settings ([f796a03](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f796a03f68c0fd720078d6ec0dae4b7db1715c21))

# **pre-release**  [6.52.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.51.1...v6.52.0) (2025-11-03)

### Features

* Implement extension `deactivate` ([ed50ca9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ed50ca997d97007ff32bd009f5a20bf9146256da))
* Proxy Duo Agent Platform requests through GitLab ([e67c62d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e67c62df9ea7d399407d0e5230e9dd0f7527f6e4))

## **release**  [6.51.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.51.0...v6.51.1) (2025-10-30)

# **pre-release**  [6.51.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.50.0...v6.51.0) (2025-10-30)

### Features

* use system CAs in language server ([8b874fb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8b874fb1cceeed110800fc01b8c7c0b0945d67c5))

# **pre-release**  [6.50.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.13...v6.50.0) (2025-10-28)

### Features

* Select project for repository ([c8b4a63](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c8b4a63848dd6b62f686797682db3ac223bc97d3))

## **release**  [6.49.13](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.12...v6.49.13) (2025-10-24)

## **pre-release**  [6.49.12](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.11...v6.49.12) (2025-10-22)

### Bug Fixes

* Fix command run failure in the integrated terminal ([63433f2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/63433f24aea8e61789e46610de7ca7ee8af118b7))

## **release**  [6.49.11](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.10...v6.49.11) (2025-10-20)

## **pre-release**  [6.49.10](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.9...v6.49.10) (2025-10-20)

### Bug Fixes

* resolve LS exported types error ([e948a99](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e948a99b3283b628a62dd95cfdaf6a34374336ea))

## **release**  [6.49.9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.8...v6.49.9) (2025-10-15)

### Bug Fixes

* **agentic-chat:** handle non-unique file names in diff view ([fdd52fc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fdd52fceb47a3d12a65adf80b6bc829e1c16b76c))

## **release**  [6.49.8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.7...v6.49.8) (2025-10-10)

## **release**  [6.49.7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.6...v6.49.7) (2025-10-08)

## **release**  [6.49.6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.5...v6.49.6) (2025-10-08)

## **release**  [6.49.5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.4...v6.49.5) (2025-10-03)

### Bug Fixes

* Clipboard access in remote environments ([7b8754d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7b8754dc1c09af6659ef970d5035c401d5f5097c))

## **release**  [6.49.4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.3...v6.49.4) (2025-10-01)

## **release**  [6.49.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.2...v6.49.3) (2025-09-30)

### Bug Fixes

* Send correct clientContext in web extension ([f8b9d92](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f8b9d92f507d9e5ead5e9c2757fe74b2414d528d))

## **release**  [6.49.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.1...v6.49.2) (2025-09-30)

## **release**  [6.49.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.49.0...v6.49.1) (2025-09-29)

# **release**  [6.49.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.48.0...v6.49.0) (2025-09-29)

### Features

* Use Language Server for code suggestions in web ide ([0f73081](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0f730817217bbed3b4b70cb42d822f4d9f11ac37))

# **pre-release**  [6.48.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.47.0...v6.48.0) (2025-09-29)

### Bug Fixes

* **docs:** update diagnostics settings section verbiage ([05c24cd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/05c24cdff3a38700b0ea43b177c3105345e6258b))


### Features

* Get repositories from the LS ([1c77ff8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1c77ff82fb2fc6865058d5356c838f010c4d1be7))

# **release**  [6.47.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.46.0...v6.47.0) (2025-09-26)

### Features

* Support OAuth logins for GitLab Self-Managed and GitLab Dedicated ([3d71c40](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3d71c40f433a9f8e10540b5242ee5587db90acd2))

# **pre-release**  [6.46.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.45.0...v6.46.0) (2025-09-26)

### Features

* log relevant network settings on startup ([dabbe12](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dabbe1207d9af7b1e4f8eabc7667a77552d1bdbb))

# **pre-release**  [6.45.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.44.2...v6.45.0) (2025-09-24)

### Features

* show webview resources on http instances ([bee7de7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bee7de7874bb43551b0e65068d47737f7116bb5f))

## **pre-release**  [6.44.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.44.1...v6.44.2) (2025-09-19)

### Bug Fixes

* Run terminal command in the background ([f698582](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f698582627cf8228f950285f5e2caaeb2f32a9be))

## **release**  [6.44.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.44.0...v6.44.1) (2025-09-18)

# **release**  [6.44.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.43.2...v6.44.0) (2025-09-17)

### Features

* Update gitlab-org/gitlab-lsp dep to v8.11.0 ([dde896c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dde896cfd76f2ed4cf7ed845b1ceb025867cb384))

## **release**  [6.43.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.43.1...v6.43.2) (2025-09-15)

## **pre-release**  [6.43.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.43.0...v6.43.1) (2025-09-12)

### Bug Fixes

* prevent [secure] chat availability in Web IDE without duo seat ([327976e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/327976e7b0f0541acfdaf579585e87059da62f55))

# **pre-release**  [6.43.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.42.2...v6.43.0) (2025-09-11)

### Features

* **MCP:** MCP configs open with documentation links and examples ([0db4009](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0db4009c35a1e8b4ecd224d9c31ff7d7f14d51da))

## **release**  [6.42.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.42.1...v6.42.2) (2025-09-10)

## **pre-release**  [6.42.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.42.0...v6.42.1) (2025-09-08)

### Bug Fixes

* Revert default connection agent platform type ([b91bc88](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b91bc88b46602de3695456e4e14b3dadc3fe4410))
* support ee suffix in version check ([768b142](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/768b142e4851a674ee36665a6bb3fee5fa2aaaaa))

# **pre-release**  [6.42.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.41.0...v6.42.0) (2025-09-05)

### Features

* introduce Dependency Injection to VS Code Extension ([43da39a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/43da39a932267cc521fbfe3cd08a87cc2079b6b6))

# **pre-release**  [6.41.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.40.2...v6.41.0) (2025-09-03)

### Features

* **MCP:** Add command palette command to open Workspace MCP settings ([cce8861](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cce88610076063b8aad2723aca6fd2deb0173693))
* Use WebSocket client for Duo Agent Platform by default ([da94775](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/da94775d0151d50af0b4f67c1e1bc053a89790d7))

## **pre-release**  [6.40.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.40.1...v6.40.2) (2025-09-01)

### Bug Fixes

* update CODEOWNERS for docs ([72651cf](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/72651cf35ecdad589ce1def7d07cb3083a7499c0))

## **release**  [6.40.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.40.0...v6.40.1) (2025-08-28)

### Bug Fixes

* race condtion in Language Server authentication logic (update LS) ([9bb191d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9bb191d114512af8ce42746f8ad1dba073e99921))

# **release**  [6.40.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.39.1...v6.40.0) (2025-08-28)

### Features

* enable Duo edit file diagnostics by default ([085675d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/085675d06f94b1472eb842127e6ba399c00ce34c))

## **release**  [6.39.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.39.0...v6.39.1) (2025-08-27)

# **pre-release**  [6.39.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.38.1...v6.39.0) (2025-08-26)

### Features

* disable code suggestions when file is excluded ([024d075](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/024d0754138507f2bdb9862f2d6b37026e344535))

## **release**  [6.38.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.38.0...v6.38.1) (2025-08-18)

### Bug Fixes

* upgrade @gitlab/gitlab-lsp to 8.5.2 ([05342b4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/05342b42112208540a09776a00db7c9ab79a18a7))

# **pre-release**  [6.38.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.37.0...v6.38.0) (2025-08-15)

### Features

* indicate selected remote in the project item ([d12b863](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d12b863c75e5ec30986fc1258ca0f1db4ff5a721))

# **pre-release**  [6.37.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.36.0...v6.37.0) (2025-08-13)

### Features

* handle missing default Duo group in Code Suggestions ([b64b95d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b64b95da390b881bb2c64aa8e1cdf32916869b2f))
* show clear selected project button ([5d5eaaa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5d5eaaabb1201b4deb6e448128c23c08f8ced8ae))

# **release**  [6.36.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.35.6...v6.36.0) (2025-08-06)

### Features

* add 'get diagnostics' RPC request handler ([6dccbee](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6dccbee3a5de5324ccdb6141e46a478194484f80))
* Add diagnistics section for Flows ([3237b58](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3237b587d22be2f6dced19ccf73fba5be1803e4d))
* **chat:** support namespace in agentic chat ([136a63d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/136a63de11cc28f152e57b9eaf471c8981b5395d))

## **pre-release**  [6.35.6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.35.5...v6.35.6) (2025-08-05)

### Bug Fixes

* Pass proxy settings to Duo Agent Platform WebSocket ([a9edb07](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a9edb07a90b32da2552cb0b97e836382cba966d4))

## **pre-release**  [6.35.5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.35.4...v6.35.5) (2025-08-01)

### Bug Fixes

* Hide Duo Agent Platform panel when feature flags are disabled ([d2e2134](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d2e2134c47c18bf4a0a331f482d23ecf8bde09a8))

## **pre-release**  [6.35.4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.35.3...v6.35.4) (2025-07-31)

### Bug Fixes

* Re-create workflow terminal when closed ([2651071](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2651071d3e61356365e63bc2e26a02c8c2e891f1))

## **release**  [6.35.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.35.2...v6.35.3) (2025-07-29)

## **pre-release**  [6.35.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.35.1...v6.35.2) (2025-07-29)

### Bug Fixes

* do not escape external webview URI ([c850efd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c850efd7bf090c9f4550ec17c20def5fc02afd65))
* **security:** Upgrade to GitLab Language Server 8.0.1 ([e435ac7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e435ac7b94d34220ecf534f8054c160404c3600a))

## **pre-release**  [6.35.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.35.0...v6.35.1) (2025-07-28)

### Bug Fixes

* Fix Language Server web views in Remote dev environments ([703d29a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/703d29a38ae95772f809ad3c191b6d656cc1cdff))

# **release**  [6.35.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.34.0...v6.35.0) (2025-07-17)

### Features

* **diag:** Add Agentic Chat to diagnostics page ([61a6ff7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/61a6ff7b8d4c3c9be26e28c7405f8b5749027b22))
* **kg:** add Knowledge Graph view ([674cedf](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/674cedf83cada61aa86a349465aa87411f23a4c2))

# **release**  [6.34.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.33.2...v6.34.0) (2025-07-15)

### Features

* Update Agentic features guards ([8733bc8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8733bc8e829b91e452165a226c10df19ed0f736f))

## **release**  [6.33.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.33.1...v6.33.2) (2025-07-11)

## **pre-release**  [6.33.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.33.0...v6.33.1) (2025-07-10)

### Bug Fixes

* re-register handlers for the agentic chat ([57c4e41](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/57c4e411e306576bb7ae12119022f00ea305a397))

# **pre-release**  [6.33.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.32.2...v6.33.0) (2025-07-09)

### Bug Fixes

* Send `sourceFrameId` to correctly target clipboard events ([e106098](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e10609843a69823c0c2e1f453399dd5b0970dd4b))


### Features

* add format middleware when applying workflow edits ([4701cca](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4701cca04ca3c4476a2dc2b5284064cf26112506))

## **release**  [6.32.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.32.1...v6.32.2) (2025-07-04)

## **release**  [6.32.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.32.0...v6.32.1) (2025-07-04)

# **pre-release**  [6.32.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.31.0...v6.32.0) (2025-07-03)

### Features

* add command to open user level MCP configuration ([4b4841d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4b4841dc64761737499167808e783cdc96bae850))
* Add new sidebar item for the tabbed agentic view ([bd8e1b0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bd8e1b0baa9518f929b708321db15163799d2575))

# **release**  [6.31.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.30.1...v6.31.0) (2025-07-02)

### Bug Fixes

* double the api pulling retries ([cffba7f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cffba7f0f6b51f91fbc931da7f98896ceeb2deac))


### Features

* update content on vse from duo workflow to duo agent platform ([4958a0a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4958a0a9fe095e89b34cb2d7e10eb68a1deea210))

## **pre-release**  [6.30.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.30.0...v6.30.1) (2025-06-30)

### Bug Fixes

* set projectPath for single folder workspace ([3f41226](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3f412262c910bac5f70e3eed0e4b9ffc607fbf48))

# **release**  [6.30.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.29.0...v6.30.0) (2025-06-26)

### Features

* Update @gitlab-org/gitlab-lsp to 7.44.1 ([e8a9659](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e8a96596b2c0beff25987db2c0b45814bce050cd))

# **pre-release**  [6.29.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.28.2...v6.29.0) (2025-06-25)

### Features

* enabled duo agentic chat history by default ([a4dddfe](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a4dddfef0b8d7c5902a81ba5b481847488c3dae7))

## **release**  [6.28.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.28.1...v6.28.2) (2025-06-23)

## **pre-release**  [6.28.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.28.0...v6.28.1) (2025-06-23)

### Bug Fixes

* added missing local flag to LSP communication ([94f7c77](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/94f7c772d5e24de1eefeeaed803926dc4b1a5f1a))

# **release**  [6.28.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.27.0...v6.28.0) (2025-06-20)

### Features

* Handle get editor selection request ([3090263](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3090263d1cdb2bff60b5b2cb492b3a10d795eaf7))

# **pre-release**  [6.27.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.26.1...v6.27.0) (2025-06-18)

### Features

* Add client FF to guard agentic chat Slash commands ([2fad9bd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2fad9bdf10ada1f061c001716b3701a005b8f8c9))

## **release**  [6.26.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.26.0...v6.26.1) (2025-06-17)

# **pre-release**  [6.26.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.25.0...v6.26.0) (2025-06-16)

### Features

* added "new chat" and "history" buttons for the agentic chat ([8ea801d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8ea801dcd1275d11bb2bcbb865d991b9ea131987))

# **release**  [6.25.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.24.1...v6.25.0) (2025-06-13)

### Features

* Add terminal button for explain terminal context ([b01fc0d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b01fc0d005d07dfe22bebe0cb999f159dcd8f1ff))
* Add terminal context to diagnostics page ([a0d632a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a0d632ab32e770d250c2caf34b3a5f8b8a0d3f1a))
* release Duo Diff - showing diff for Duo-made changes ([244281a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/244281ab777aaf17ebe07e97664f62fbcb691098))

## **release**  [6.24.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.24.0...v6.24.1) (2025-06-12)

### Bug Fixes

* Workflow beta showing up for non beta users ([76d4e50](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/76d4e50c1d9d67a100f67d3a938b6455e701f22f))

# **pre-release**  [6.24.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.23.0...v6.24.0) (2025-06-12)

### Features

* Update icon for Duo Workflow ([a003aa4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a003aa4b9f1cbdb540fc2906ebd41a52d4054f16))

# **release**  [6.23.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.22.0...v6.23.0) (2025-06-10)

### Features

* show diff for workflow changes ([8ce8c7e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8ce8c7e75e6050d91d579e717b6f4b6e97a01e5f))

# **pre-release**  [6.22.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.21.0...v6.22.0) (2025-06-09)

### Bug Fixes

* update Chat icons to correct dimensions ([b7585ac](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b7585acc55e3dbfc398ae76d41bca7686115feff))


### Features

* listen to runCommand requests from LSP ([f24168d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f24168d108b4596da34e98e85bd4dceffb941f2e))

# **release**  [6.21.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.20.0...v6.21.0) (2025-06-05)

### Features

* save files after Duo workflow edits them ([624c36d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/624c36d06234f81951a88848fb7ad4540174bfd9))

# **pre-release**  [6.20.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.19.2...v6.20.0) (2025-06-05)

### Features

* Support model selection via Duo namespace ([7a24aab](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7a24aabf0c5f7ce6518185ef60a1738ddaf6269f))

## **release**  [6.19.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.19.1...v6.19.2) (2025-06-04)

## **release**  [6.19.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.19.0...v6.19.1) (2025-06-03)

### Bug Fixes

* commands not executing when chat hasn't been opened ([1512c92](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1512c927890b7160084260a0debf13ff18a599bc))

# **release**  [6.19.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.18.4...v6.19.0) (2025-06-02)

### Features

* Make duo workflow panel the default ([cbe0fc0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cbe0fc055afbf28b1152e4c62c09e9578fb3ee22))

## **release**  [6.18.4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.18.3...v6.18.4) (2025-06-02)

## **pre-release**  [6.18.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.18.2...v6.18.3) (2025-06-02)

### Bug Fixes

* use duo-ui markdown renderer ([a91c522](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a91c522b2c1fe39b905ead776c65e4c41b4d45b0))

## **release**  [6.18.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.18.1...v6.18.2) (2025-05-29)

### Bug Fixes

* send all didOpen events to the Language Server ([e3044e8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e3044e885eb9e764c2773021e17f30fb20e4d740))

## **release**  [6.18.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.18.0...v6.18.1) (2025-05-26)

# **pre-release**  [6.18.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.17.0...v6.18.0) (2025-05-26)

### Features

* emphasize agentic chat is an experiment ([315aed9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/315aed9add0d4f2abadcb7427ff4c6bd225eefda))

# **release**  [6.17.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.16.0...v6.17.0) (2025-05-23)

### Bug Fixes

* assign openOptions ([e40f5f7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e40f5f7abf1484de4b3c82e48e6af2b8c381f319))


### Features

* add copy text to ls client wrapper ([8516a3b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8516a3b4d771aa231a3d6faf36ac80add0e2fbbf))
* Add quick fix code actions for Duo Quick Chat ([b09bcee](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b09bcee7fe05be9b7d2d3d93168c6d20450337a4))

# **release**  [6.16.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.15.0...v6.16.0) (2025-05-22)

### Features

* introduced Agentic Duo Chat setting ([d118655](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d1186556ab7c6a6696f73e9bb21501590f49b5b2))

# **release**  [6.15.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.14.1...v6.15.0) (2025-05-21)

### Bug Fixes

* fix downstream job refreshing ([d19c0ef](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d19c0efa7bd7ef433becc031c05ad5241f6bfabb))


### Features

* agentic chat availability ([8245444](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/824544470220964c771a428aeb18278a9af3eb46))

## **release**  [6.14.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.14.0...v6.14.1) (2025-05-20)

### Bug Fixes

* gracefully degrade when LS fails to start ([f78b7da](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f78b7dae81d203c8952d03a088f0a3ccec0bd50f))

# **release**  [6.14.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.13.1...v6.14.0) (2025-05-19)

### Features

* add /fix with duo quick chat "source" code action ([6cce648](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6cce648a0bfdde03b664def34b82313da40005b9))
* Downstream Pipeline Jobs ([78801ab](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/78801abd027bbf8f741ab07dc54950cde7f48bb1))
* Handle `openUrl` notification for Agentic Chat ([32deeae](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/32deeaea7c71c97690d68773480b039e3400bc07))

## **release**  [6.13.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.13.0...v6.13.1) (2025-05-07)

### Bug Fixes

* Strip per-line Timestamps in AnsiDecorationProvider ([e5ad5a2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e5ad5a22139a132e254fdab2a2e49b88faa0a9c6))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !2575](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/2575) 👍

# **release**  [6.13.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.12.1...v6.13.0) (2025-05-01)

### Bug Fixes

* disable LS-hosted Chat webview in remote environments ([5c4ca9e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5c4ca9e583b02cd856cb0fe29513b9af28cc3050))


### Features

* Add duo workflow panel ([27342c9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/27342c9a52665c616ec7d089d1b5fb2f57ccae63))

## **release**  [6.12.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.12.0...v6.12.1) (2025-04-28)

# **release**  [6.11.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.10.0...v6.11.0) (2025-04-17)

### Features

* Change STATUS buton to open diagnostics ([4035caa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4035caa71eb0d083ed28e4d5c2977862cb722830))
* **workflow:** send workflow type config in initialState ([40f9ce9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/40f9ce905732ab3c6f1277b278706c5233eaad80))

# **release**  [6.10.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.9.0...v6.10.0) (2025-04-15)

### Features

* add ability to explain terminal output with Duo Chat ([3ef405e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3ef405ee0aaf40cd5f4344c85a237db5fbed994c))
* **webIde:** Enable Settings Diagnostics for WebIde ([f95cda7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f95cda78703f7f655a4e417062abf84c8c777c91))
* **workflow:** configurable Graph setting ([d42f369](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d42f369881bb027774af17b6405675e18e0ba6b4))
* **workflow:** pass the graph name to LS ([23762e8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/23762e8c76c4e5d84c1eb94e286602712a27d948))

# **release**  [6.9.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.8.0...v6.9.0) (2025-04-11)

### Bug Fixes

* fix a missing feature state icon issue ([b1dd49a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b1dd49a50afb3a60d0466a5bcce11281d24255f6))
* hotfix for inconsistent token cache ([358e2fd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/358e2fd50cf7c3e421a55bf050cd5198e8dd8543))
* **Walkthrough:** fix link, add path to link-checker ([6fe6c26](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6fe6c26cde2ba480b98fc292b98a82ce54319515))


### Features

* add terminal_context status check ([8e09651](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8e0965141be6a74e48ecc46b1122f0a2d35ae46e))
* **desktop:** Adding Settings section to Diagnostics ([10ed1b8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/10ed1b8f34c9f735f5d755b20d556f0d9af8cb0c))
* enable agentic chat placeholder ([a20d5b5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a20d5b5c4aea85a5beab1e98cee311044f6f24b0))

# **release**  [6.8.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.7.1...v6.8.0) (2025-04-09)

### Bug Fixes

* fix some webviews not rendering properly on WSL ([5b51c07](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5b51c07906ee6fee1c4b024512ad7d2a6b78d043))
* Update FS Diagnostics Renderer with True/False ([e5babbb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e5babbb6e41b8a35331c67b0600e719fb3e657cc))


### Features

* Enable LS Duo Chat by default ([be17ada](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/be17ada5db01a0736e0134140472842773aa3b19))

## **release**  [6.7.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.7.0...v6.7.1) (2025-04-04)

### Bug Fixes

* broken account refresh logic thanks to malformed OAuth account ([b8c56f5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b8c56f50e10c6570a619729797a85332fd194eb8))

# **release**  [6.7.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.6.1...v6.7.0) (2025-04-03)

### Bug Fixes

* add custom timeout for the Duo Chat webview ([80e9c0f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/80e9c0f3681496bc5f8d92046da609914c164bef))


### Features

* **diagnostics:** Add Feature State Diagnostics ([77bf21d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/77bf21de7196612575514f67333fe80ca9e94684))

## **release**  [6.6.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.6.0...v6.6.1) (2025-03-31)

### Bug Fixes

* Update telemetry for new streaming implementation ([5831ae8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5831ae8cfee1908308f66d99c54076490605f6f7))

# **release**  [6.6.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.5.0...v6.6.0) (2025-03-26)

### Features

* Add enabled user setting to LS sync ([6f74010](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6f7401003e8d7853fcd67111626dc1401f27b8c3))
* preselect active account in the 'select account' menu ([bfab5a1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bfab5a1ffdfba5205537638d43a163e4a8642f83))

# **release**  [6.5.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.4.0...v6.5.0) (2025-03-21)

### Bug Fixes

* introduce workaround for credential synchronization issues ([86c22e4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/86c22e45543368ca33e8614610a1621f49840d78))
* Web IDE compatability for latest version ([8a5d190](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8a5d1905b3a3b6c2658ce702d46c83c978b7ecef))


### Features

* add `Fix with Duo` quick fix code action ([ae8317e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ae8317e6a2cae4acfbddd2831cd97fae7d49cdee))

# **release**  [6.4.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.3.0...v6.4.0) (2025-03-19)

### Features

* ensure quick chat conversations are ephemeral ([50c08b2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/50c08b2484a1c078859778dd4060824dbe6acfdb))

# **release**  [6.3.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.2.2...v6.3.0) (2025-03-13)

### Bug Fixes

* **auth:** do not show non-gitlab urls ([ea82c81](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ea82c81f089d98887a15036cfc53e1a5a641bcd4))
* ignore focus out when adding PAT ([7c62057](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7c62057d196fa79e6eae3f2f6d7685765039fa06))
* Improve Quick Chat hint behaviour ([7f94d13](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7f94d13207b4fdf508a95cd82ad9783d5b4157e3))


### Features

* **diagnostics:** Add GitLab instance version to Diagnostics Page ([4e7ffa8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4e7ffa8011f8e3b15f01e8f6571e115eff73ee4a))
* hide account indicator to save status bar space ([eaed916](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/eaed916cc8929d3fe53af64074725c614b573a5b))

## **release**  [6.2.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.2.1...v6.2.2) (2025-03-05)

### Bug Fixes

* use correct origin when calling connectToCable ([6ff56e0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6ff56e07083e39024f0834d88c57663e5bc20be8))

## **release**  [6.2.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.2.0...v6.2.1) (2025-03-05)

### Bug Fixes

* **duo-workflow:** specify boolean for useDocker default ([5b73329](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5b73329e9d8eb89a819e1882d4242214c74b0743))
* **streaming:** use generation indicator - avoid VS Code breaking change ([d59edd3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d59edd3f020ae91b7ec033f0d491454bf8ec1914))

# **release**  [6.2.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.1.1...v6.2.0) (2025-02-27)

### Bug Fixes

* Fix Duo Chat for env variable-based accounts ([77cb2b2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/77cb2b205f1bf4a3a1773a0b696be3e42d8fd8e1))
* provide commenting range to enable Quick chat open/close ([d0960c5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d0960c5618abc9e1649196bf6ce44565d0dcd4b1))


### Features

* add useDocker configuration for workflow ([71cf909](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/71cf909df17c5370f60ec202d5c445537c3e8bc5))

## **release**  [6.1.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.1.0...v6.1.1) (2025-02-24)

### Bug Fixes

* create a commit that will allow us to release ([1b0d75e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1b0d75e9383908febca937abdc3d2d948a84d8cf))

This release is only promoting the previous `6.1.0` pre-release as the main release.

# **pre-release**  [6.1.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v6.0.0...v6.1.0) (2025-02-19)

### Bug Fixes

* hide duo chat if there is no account ([19c07d7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/19c07d71f8f8b30b17fdb2e94485693f960acd5a))
* show select commands in command palette ([ecaba13](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ecaba13bb11ced8f3606a74f736f7a80efaabf61))


### Features

* close duo quick chat with esc key ([d5449d0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d5449d0c5ca2ee687a2439ae8c46c3fb718e7306))

# [6.0.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.40.1...v6.0.0) (2025-02-14)


### Bug Fixes

* add uri check to stop unnecessary toggleGutterIcon ([7baf32f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7baf32f2a8dec99f62163c94ad1dee002d8d6483))


### Features

* **duo-workflow:** duoWorkflowBinary feature flag ([3eb588e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3eb588e65c06b1a527282a6f56152f51dd6ec66f))
* increase minimum supported VS Code to version 1.88.1 ([e32e84f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e32e84f9c7f1552542de7f7bc87adf9b3b591769))


### BREAKING CHANGES

* users must use VS Code versions 1.88.1 or above



## [5.40.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.40.0...v5.40.1) (2025-02-12)


### Bug Fixes

* streaming Duo Code Suggestion in VS Code 1.97.0 ([654cf7d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/654cf7d18b747d6715a25646cd8381e054c53dbd))



# [5.40.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.39.0...v5.40.0) (2025-02-11)


### Features

* Add duo workflow search command ([4a366ec](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4a366eccd04421990569dd4a1f7939240cf131c3))



# [5.39.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.38.0...v5.39.0) (2025-02-07)


### Features

* Add workspace rootUrl as the base of opening file ([d277229](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d277229bf3b0240c46ac4ef756b4a12aa8856cbe))
* show all accounts in VS Code accounts view ([6591716](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/65917164272f3fd09e4da76a6167d7d6d9488183))



# [5.38.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.37.0...v5.38.0) (2025-02-05)


### Features

* close duo chat with hotkey ([2244e26](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2244e264222990e15b126f1826a0e20d5890cf81))
* **DuoChat:** Add Language Server version to Diagnostics ([8d7126f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8d7126f3e6775d4f698f94e4fb6b3f85c42be6ba))



# [5.37.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.36.0...v5.37.0) (2025-02-03)


### Bug Fixes

* editing MR comments doesn't duplicate them ([ae3631f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ae3631fd5a1028a80cb28b3e84f4e674e807da38))


### Features

* Handle opening of files for LSP events ([b247534](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b247534aedeebef9b7998561494d88073ceb0956))



# [5.36.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.35.3...v5.36.0) (2025-01-29)


### Features

* GitLab Duo Tutorial ([772ccbd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/772ccbd28c5b46fdf11b4e03cb29aea631bfa39f))



## [5.35.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.35.2...v5.35.3) (2025-01-28)


### Bug Fixes

* WS URL creation for different instance URLs ([2f16a74](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2f16a74d2cd8f77021099fc48a525bdc05341359))



## [5.35.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.35.1...v5.35.2) (2025-01-27)


### Bug Fixes

* add logging to understand Chat initialization ([c605281](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c6052819b0307c949cfda13f3f4d65ffdd303bc1))



## [5.35.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.35.0...v5.35.1) (2025-01-24)


### Bug Fixes

* Add top level error catch with webview error display ([a4b22b1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a4b22b1b8dadaefc1566d8e5e76a99caaa9412e6))



# [5.35.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.34.0...v5.35.0) (2025-01-22)


### Bug Fixes

* remove sast scan command from common package json ([5b83f2b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5b83f2b2b8753c3e7a49932fe9cc9aa889ec71eb))


### Features

* update duo-ui and gitlab-ui + breaking changes, update empty state ([e13c37f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e13c37fd6d11c06bba8fc1f0c7ca1cc12011e101))



# [5.34.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.33.3...v5.34.0) (2025-01-21)


### Features

* Add diagnostics page and version diagnostics ([8faa05a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8faa05a58c2c517a0144bccaa63073617473c485))



## [5.33.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.33.2...v5.33.3) (2025-01-21)


### Bug Fixes

* authenticate through walkthrough signin ([cb9db20](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cb9db20b7257e4efbe08613b5804d6cf9482a088))



## [5.33.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.33.1...v5.33.2) (2025-01-20)


### Bug Fixes

* **DuoChat:** Change text from Show Status to STATUS ([9b0ce91](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9b0ce9111e5b29ce8772b4e3ec32f412245ae147))
* move quick chat text hint to after cursor ([dc2f1e9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dc2f1e9d26bbcb75fea0f7310858423a996eb7ea))



## [5.33.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.33.0...v5.33.1) (2025-01-17)



# [5.33.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.32.0...v5.33.0) (2025-01-17)


### Bug Fixes

* Emit `FeatureStateManager` state when listener is added ([1808fad](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1808fad7d7f5da7eb9007e20b7c73e16659f9152))


### Features

* release single account per workspace simplification ([d59903c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d59903cc74dd5ca806d5227735d4d371e3298ab6))
* **single-account:** shows a message about single account management ([ecd6f30](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ecd6f308fb2b068b4d382f0accaeb0f2b5527adb))



# [5.32.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.31.0...v5.32.0) (2025-01-15)


### Bug Fixes

* **code suggestions:** report API errors to the user ([a5a4665](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a5a466526c94aed0181f35750c4938d591f734e3))
* **single-account:** hide chat UI in WebIDE if Duo chat isn't available ([f9f5261](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f9f5261a6fe3d7fce02dc1b63ffe0021630ac385))
* **workflow:** show the "Run" command only when the "Show" is available ([4b3d4fc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4b3d4fcd5914443d1d9ff8da48cb793a0d5d5001))


### Features

* Implement exponential backoff for token refresh ([183890c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/183890c7836e194251cb257a4c731b0d813389b1))



# [5.31.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.30.0...v5.31.0) (2025-01-13)


### Bug Fixes

* refresh OAuth token even if the extension doesn't make API requests ([84d8559](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/84d8559c6f527b3207394660b171ab786dc8d359))
* Showing and hiding of QuickChat based on LS checks ([e29c606](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e29c606c2cec89ae0aeec0990d2cf19517732847))


### Features

* add remote sast scan settings ([07242a8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/07242a8c8cfdaa3f0c58304cfd978cf85b90381c))



# [5.30.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.29.0...v5.30.0) (2025-01-09)


### Features

* Create Chat State Manager ([0d15cba](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0d15cba124271434914593dc5ac4e9aac8599faa))



# [5.29.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.28.0...v5.29.0) (2025-01-09)


### Features

* Add Show Status button in Duo Chat Sidebar Toolbar ([63ff658](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/63ff658f26b9ef02bffd37c89484ab8a6cc8947c))
* hide scan command when no activeTextEditor ([9947125](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/99471254f19a8d54de22c7d316ce64d8371b1b78))



# [5.28.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.27.0...v5.28.0) (2025-01-06)


### Features

* Add account preselection state management (behind FF) ([b4a7d93](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b4a7d93313405fc7c636df9a1c54d9ab04086ddd))
* Add service for automatic account selection (behind FF) ([02a5ee7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/02a5ee794b1190cd6afa332cd18c979efb9c8d54))
* hide sast scan when no account ([177b822](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/177b8227bd04b6afb5cdb4c88a9f5a42ffbcae57))



# [5.27.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.26.0...v5.27.0) (2025-01-01)


### Features

* update empty state colors ([afed844](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/afed844e149cf1977e2a7a8ada6c1687994fa1ad))



# [5.26.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.25.1...v5.26.0) (2024-12-19)


### Features

* Prevent multiple workflow tabs ([d23252c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d23252c3e80d215c8882f95b8a61fdf3342be9e2))



## [5.25.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.25.0...v5.25.1) (2024-12-17)


### Bug Fixes

* duo chat insert code snippet variable replacements ([4dcdc21](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4dcdc21a6f935da85e88218ea74acd0961b6c81d))
* ensure_npm pre-install script incorrectly triggered ([b228f36](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b228f363fa07d169e127f515ac8210f14e95bf82))



# [5.25.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.24.0...v5.25.0) (2024-12-13)


### Bug Fixes

* prevent TextDocument onDidOpen if document is not actually open ([e5ce365](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e5ce365ab4247115415758606ac827487a666273))


### Features

* **quick-chat:** Add one-click button to insert code snippet ([171a539](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/171a539cb822fff9b1ceccc212c0c31e5d0f1c3f))
* show error message popup ([ede779b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ede779bed10834ebe4dfd34e5e8ee30b3266013c))



# [5.24.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.23.2...v5.24.0) (2024-12-12)


### Bug Fixes

* prevent feature flags errors on older instances ([f3ff148](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f3ff14865db1adccfdc7b607c7d6d3e4aa9e263c))


### Features

* Duo workflow preserve context ([ee2f65e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ee2f65e919c8549432fed726674e9d772e948c50))



## [5.23.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.23.1...v5.23.2) (2024-12-11)


### Bug Fixes

* **quick-chat:** label update steals focus ([6cacec8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6cacec8205cd864236f0eca0000e59c0ee4858d7))



## [5.23.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.23.0...v5.23.1) (2024-12-10)



# [5.23.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.22.0...v5.23.0) (2024-12-10)


### Features

* **status-bar:** add status to quick pick menu ([c142d0f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c142d0fe59ad98c28b04767826db8e03c0d5176c))



# [5.22.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.21.0...v5.22.0) (2024-12-09)


### Bug Fixes

* better account validation error ([711d83c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/711d83cd19eddcff40cd97119e98f6806f06e39a))


### Features

* setup security vulnerability webview ([472d0cd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/472d0cd6a0a28d48e61fc2edecd1159d0cdfe8b2))
* show quick chat keybindings hint only when chat is available ([9a79bd2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9a79bd26e98b41dab3ca09f0fee7bd43788d3359))



# [5.21.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.20.0...v5.21.0) (2024-12-04)


### Features

* **ai-context:** LocalGitContextProvider ([850b765](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/850b765ac3ce501eaa295e7e2297dcf2759686a1))



# [5.20.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.19.0...v5.20.0) (2024-12-04)


### Features

* add scan button in remote scan tree view ([c581874](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c58187485de9d0fa337efba0a55f9b4108676030))
* group configuration properties in settings UI ([93b434a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/93b434a026cf60015ad9f5df6bf4652e957b2d28))
* order settings in the settings UI ([4dafa88](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4dafa885af8908feaa4a7a90281f5bec3afb7f78))
* **workflow:** run Duo Workflow from the command palette ([feaabe5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/feaabe5d49085b253afc72ce9ddce939fa28f420))



# [5.19.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.18.1...v5.19.0) (2024-11-26)


### Bug Fixes

* catch and report errors when getting MR details ([df22e20](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/df22e20fe313255dad02b1db8b45824996d21612))
* correct documentation link for code suggestions ([03b196c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/03b196c332f2e910b4262a848a05b83939a7a0ca))
* DuoChat markdown render after stream end ([d111710](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d111710f279b4b1c3e8560a63e484ab061153ad5))
* DuoChat websocket race condition ([e5060e9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e5060e964707d8aca4d32028b55b68f43499944e))
* **DuoChat:** Gradients on code blocks not working ([45241c4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/45241c4fdeab2faaa5e3cbb0408d511e726109d9))


### Features

* add help command to Duo Chat slash menu ([a213001](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a213001369b4ab6563bb611672d1d4ecf8188406))
* Create Remote Scanning Sidebar ([a9389fb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a9389fb238d41e712ff3e0af8a0b1dffd2f2beae))
* Duo UI migration VS code extension ([d7102b9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d7102b9813aeac0531b1e4e41c7e5d03961ff85a))
* **quick-chat:** add gutter icon ([c16d170](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c16d170fb6c132f78209325b2510bdcbe8d63c07))
* **quick-chat:** capture user input when shown ([df7468b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/df7468b208a3cb6af730326a720186e17a834020))
* Track quick chat telemetry ([0a68369](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0a6836925d4ccd081cade37b493b8210a8437001))



## [5.18.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.18.0...v5.18.1) (2024-11-13)

### Other

* **deps:** Updates the GitLab Language Server to v6.15.0 ([changeset](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/compare/v6.13.0...v6.15.0))


# [5.18.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.17.0...v5.18.0) (2024-11-11)


### Bug Fixes

* Adjust styles for Duo chat error messages ([174905a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/174905aa239fc6e0f51de04ff750ed07abd57d96))
* chat API errors are logged ([97e0b55](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/97e0b55d81f64f0a2e1bcd11a3471a8ad311513c))
* Display unauthenticated duo quick menu ([50af771](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/50af7719ab35bbf3edd2933152a9aa2b347d7854))
* prevent project path badge overflowing context item popover ([dd2dcfb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dd2dcfb77749f2aee51351b3ccac8c284fcdd1f3))
* **quick-chat:** ensure quick chat is expanded ([d6af3e4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d6af3e41b48dba54cb8f308372b819230fa7e4c2))
* **quick-chat:** scope keybinding hints to files ([1764d65](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1764d65a62966844d3dd1429789a14aa4243b8f6))


### Features

* add local_git context category ([9aada92](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9aada929f528e3bcbf71458af4a22d6a5c3ff3a4))
* add snippet quick-pick placeholders ([a163de5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a163de50cf36ffec2aeff1948942d0723c5c0c6d))
* enable duo chat dependencies context category ([7c99c5d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7c99c5d43a2bdb21790cdc61c4a0c76a4efd4362))
* Pass HTTP proxy settings to language server process ([b88f9c8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b88f9c804ccd614f43c1de177eb8b15f96132ad4))
* **quick-chat:** add keybinding hint ([b657567](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b6575678322547a078907ec512cfb958fd0e302c))
* **workflow:** theming support for the editor area webviews ([6b9baea](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6b9baea83e776f02522f80d45cad7dbef0c1e2c6))



# [5.17.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.16.0...v5.17.0) (2024-10-23)


### Bug Fixes

* add AIContextManager stub for Web IDE ([8d682e5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8d682e581010f56f50956431ce9fe583057e650d))
* **DuoChat:** theme inline code blocks & "included reference" link ([afabd1b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/afabd1bb589371f3a08c65330f0fc478cdb15f68))
* Generate unique remote name when publishing ([04324cc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/04324cc5e3ab6e7141b82daeaddfed3a9ef7320b))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !2065](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/2065) 👍


### Features

* Add support for 'canceling' job status ([ca01650](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ca016500a4f83207a12c137aefa5bbb7f27907a9))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !2064](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/2064) 👍
* Duo quick chat -  add support for `/reset` and `/clear` commands ([056d1aa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/056d1aac5231ebd3c7f4cf1c108703eafedbfe75))



# [5.16.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.15.0...v5.16.0) (2024-10-18)


### Bug Fixes

* Always offer to run Authenticate command when token expires ([45a7ee4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/45a7ee4e01a5ab57698b5a7de475aa1ba36d9eb9))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !2031](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/2031) 👍
* **Duo Chat:** Remove clean slash command ([145c8a7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/145c8a725488180de52e65030295e654b6de9d15))
* Retrieve maxAccessLevel separately in ProtectedBranchProvider ([766f564](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/766f5648850654afd430c690bd6ad66e5599a987))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !2036](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/2036) 👍


### Features

* add LSP feature flags to browser.package.json ([4bacaf4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4bacaf40b9d5c8445ec0cb6012688bc2027318e8))
* Code suggestions in unsaved files ([96ff465](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/96ff4654f22eff9c78b04382a868653857e0b789))
* Copy code snippet from quick chat ([e0a150b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e0a150b362e2270664771509ff8e09e2405888af))
* Initialize Git repo when publishing to GitLab ([834fa99](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/834fa99f92432fc34b83120f51305e03f3b4b425))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1977](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1977) 👍
* Update Quick chat "Send" label to OS-specific ([057a04f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/057a04f824b5842a56defa4d62139cd72115d625))
* Update Quick Chat thread label text on selection change ([88fc60d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/88fc60d02ae9c699910adb662b12be6664b85f5b))



# [5.15.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.14.0...v5.15.0) (2024-10-04)


### Bug Fixes

* Don't return protection rules if include is empty ([7229efe](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7229efeea6de9c13622024a3efe072755b869bad))
  * Implemented by [@X_Sheep](https://gitlab.com/X_Sheep)👑


### Features

* display quick chat actions ([5c4a326](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5c4a326f25d73cc9cdfaf1f91322ee7c38cc8ce1))



# [5.14.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.13.0...v5.14.0) (2024-10-04)


### Bug Fixes

* delay when opening quick chat ([ac425ca](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ac425ca280b22d1d624e51a34a6fc0fff7f9754d))


### Features

* **DuoChat:** Streaming code includes syntax highlight/action buttons ([754f955](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/754f95537ef15555af2549881b4e1fe6b7516ae1))
* support Duo Code Suggestions in notebooks ([79d32bd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/79d32bd936f8f510c7e5dcef2fa4a170245ea482))
* Trigger Inline Chat in editor ([7d62838](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7d62838cb49a6005559e7d3933d4a307aa384d97))

### Community contributions 👑

* Implemented by [@X_Sheep](https://gitlab.com/X_Sheep)
  * Support branch protection rules ([997dce0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/997dce0787ef8089e683948941dbf1d0462db41d))


# [5.13.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.12.2...v5.13.0) (2024-09-26)


### Bug Fixes

* extension not initialized error during startup ([72614fa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/72614fabe6e7b545922fa949da6ecff562a91849))
* support osx shortcuts ([6177269](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6177269ed4164f79e5a638e2a28e729405ba2971))


### Features

* **ai-context:** Enable additional chat context with a feature flag ([b980ac7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b980ac7615b260a58d598234b133e0ded2993b98))



## [5.12.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.12.1...v5.12.2) (2024-09-24)


### Bug Fixes

* Disable additional context in chat query/mutation ([6ab30e4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6ab30e4e9e85524a88892888ef89fb9b224dc39f))



## [5.12.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.12.0...v5.12.1) (2024-09-23)


### Bug Fixes

* Stop visibilityPicker item selection from jumping to 0 ([e548d43](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e548d438c8461667bb0c89d5aff2fd70c76c6150))



# [5.12.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.11.0...v5.12.0) (2024-09-19)


### Bug Fixes

* Ensure the "fix" command does not display when Duo is disabled ([aaaed45](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/aaaed4533d2784c77b3c79d22f0651cce2dfc1df))
* Hide Open in GitLab in command palette ([f217845](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f2178453018cce42fd366d2f2b5faa3a88c1706e))


### Features

* **ai-context:** Injected File Context in Duo Chat ([0a15221](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0a152210aede771e498209988be287ebdd9621eb))



# [5.11.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.10.0...v5.11.0) (2024-09-17)


### Bug Fixes

* **docs:** Fix formatting problem detected by Prettier ([324b0e9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/324b0e9d061dfefdb1cb47d81b9894c14007825d))
* **docs:** Resolve errors from updated docs linting rules and tools ([44d507c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/44d507c163cf678a63e106107a7243ea85cb7ba1))
* ensure Duo Chat prompt is focused when showing panel ([c918f76](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c918f764c3de0f644be38715d580c496052815b0))


### Features

* **ai-context:** injected context UI integration ([a164759](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a164759450972e8f0353265c86f9db52659f73b4))


### Community contributions 👑

* Implemented by [@X_Sheep](https://gitlab.com/X_Sheep)
  * Publish to GitLab: create a new project from existing repository ([bdabd94](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bdabd943b821446ec0889b831fd9895c9746f98f))


# [5.10.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.9.1...v5.10.0) (2024-09-06)


### Bug Fixes

* Use metadata.featureFlags gql field for instance feature flags ([ba3b3b0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ba3b3b0de64e737a9cf8be8cf354803bec213985))


### Features

* implement inserting code snippets ([7a80e20](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7a80e20c70558bd1ba22304a20f98fe20a1a36b8))



## [5.9.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.9.0...v5.9.1) (2024-09-04)


### Features

* added AI Context Management ([a33e44e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/a33e44eb23aeebc99cf3059ac52519b20471e826))
* show executing duo workflow steps ([75c3c59](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/75c3c59a972de2f0e97dbb359af334780ca3c3ee))
* subscribe to do workflow events ([9e7bd53](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/9e7bd5379e0bae31847c066faf13be622c0fcaf8))


# [5.9.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.8.0...v5.9.0) (2024-08-28)


### Bug Fixes

* Add Code Suggestion State Check for Status Bar Icon ([ee2472a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ee2472a4fe0ab4f5a3896859030ac9d2e9d459bb))
* Add missing tailwind styles for DuoChat ([09b1a98](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/09b1a987d6fe7795a2ca793d93d0044c0faa4f61))


### Features

* add /fix command for GitLab Duo chat ([384708a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/384708a79f5e6927ac80f51c09a07f60d1b1177b))
* Add cancelPrompt handlers for DuoChat ([2fadc14](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2fadc149161a4e6ac7f4083dfff828fd4a32284c))
* add new chat icon to activity bar ([50f54cd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/50f54cdb7fe899a8e0e80fc7f36ce9e92d01584a))
* add notification listener to open URLs ([929144c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/929144cad55a07fe261f51bb3eee8aa05b83cff7))
* Remove code suggestions request states from status bar ([52416ae](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/52416ae8895f831950a4b2707e005a3fd24783ee))
* rename aiAssisted configuration namespace to duo ([9d55361](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9d55361364c042f564f746b7b84d2e2a9565c848))



# [5.8.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.7.1...v5.8.0) (2024-08-20)


### Bug Fixes

* Send `DidChangeDocumentInActiveEditor` on LS start ([6d70cf2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6d70cf2b16dd8ee50b6f7a4186f8a1f2ef2d7b0e))

## Language Server changes

### Bug Fixes

* only notify on actual changes to LanguagesService ([aeceee3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/aeceee3fb2cc23e3423ff40e964614715dfca7b6))


### Features

* add new state notification for disabled language ([04db755](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/04db75521ac7017d358e5c6def04c0804e3eadf3))
* Duo Workflow fetch workflow token ([3ee23f9](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3ee23f9b0f5bee5c3ba39961c3df3cef103a837d))
* initial port of duo chat from vscode ([f9ce04e](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/f9ce04e288196fc1cfceda7017b95d68240482f5))
* normalize invalid "additionalLanguages" identifiers ([3e327ea](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3e327ead55ef61611ab4d8e8460f07f88ad51bcd))
* reduce suggestion debounce from 300ms to 250ms ([bd098b3](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/bd098b39fc8a50a72d60a976295627cb8b308d90))



## [5.7.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.7.0...v5.7.1) (2024-08-16)


### Bug Fixes

* don't ask user to select account ([92ca27c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/92ca27cb1d39e1d3a6e5492a8845a00b1227165e))
* duo chat feedback form not sending text feedback ([7b46dad](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7b46dad825df70f6b65c7206d7451bf3dc1a522e))



# [5.7.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.6.0...v5.7.0) (2024-08-16)


### Features

* send open tabs to language server on init ([f44a714](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f44a71405592392f002200e4a7575e9b139aff36))
* update duo status bar item placement and label ([6af8303](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6af8303aa2d0bb0160698e51cd45b96148f7ea9c))



# [5.6.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.5.0...v5.6.0) (2024-08-14)


### Bug Fixes

* Scope duo workflow docker values to all settings ([69d1e72](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/69d1e72b06c529740aab1deb0d28b366c5a2f629))

### GitLab Language Server Features

* Add Workflow goal and execution component ([3cb5d60](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/3cb5d60f3f39e9d686f11f2dede37437747e6284))
* switching between open tabs adds them to advanced context cache ([c00320a](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/c00320a623eac03c6b97dc61d1c32fa6f3c916da))


# [5.5.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.4.0...v5.5.0) (2024-08-14)


### Bug Fixes

* change deprecated state.refs to getRefs() ([24cfac8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/24cfac82cd32f8080a3b375b95892fd9bcc1bf81))
  * Implemented by [Van Anderson](https://gitlab.com/van.m.anderson) with [MR !1846](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1846) 👍
* **chat:** fix UI glitches and prepare for gitlab-ui update ([43691bf](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/43691bfe6a3fe5bcac397221883334defbfe242a))
* ensure cleared Duo Chat does not persist ([accb50d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/accb50dabfd87fa53c97b703a55abd65a392c8f1))
* Remove references to `gl.addAccount` command ([c6e6888](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c6e6888366d04cf78f5d9bebc9dc1d045b201724))
* render correct CS status (disabled languages) ([859f573](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/859f573271a8918e77240d5e3e71e6ee92eede7e))
* Send URI instead of document in `DidChangeDocumentInActiveEditor` ([51fc76d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/51fc76d108cc2a8c0db125903e87e4151e17d659))


### Features

* add Duo Chat status item to quick pick menu ([7813d2d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7813d2d88488ca68f934a423bab3c8c976ef04c1))
* add gitlab workflow walkthrough ([8cb0288](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8cb0288715cb248980e09a8050ccdb4336e8900b))
* add remote security scanning ([6cdf5a3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6cdf5a3966b1981ac78e7dedcbf67f733eafb4f0))
* improve tooltip text for disabled languages ([ce7b355](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ce7b355c21277877b7489c2d08db30281b62d5f0))
* introduce enabledWithoutGitlabProject Duo setting ([8861f62](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8861f62275b5a011b68578425a72c501447e98f6))
* **workflow:** added Duo Workflow settings ([48d0c42](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/48d0c422b835fd29d4f67997d1599f726c3901e1))



# [5.4.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.3.0...v5.4.0) (2024-08-05)


### Bug Fixes

* add padding around Duo Chat code blocks ([535765b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/535765bfd5732f3ff19aece8ddbe7ca5224f64e6))


### Features

* add Duo Settings item to the quick pick menu ([18abe16](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/18abe16a88c1f4c18491e9340b88fd0d7df4bd41))
* add language toggle item to quick pick menu ([38db63f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/38db63f05abfbf4a1e32ffae84bb4d9304e8fa38))



# [5.3.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.2.0...v5.3.0) (2024-07-31)


### Bug Fixes

* fix misconfigured highlight.js ([7d75ddd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7d75ddd137ac0e56038697cea4cb234acee815e0))


### Features

* add docs and forum links to quick pick menu ([94da24d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/94da24da0b0cdbefd790e451400a43258a0a7d01))



# [5.2.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.1.0...v5.2.0) (2024-07-30)


### Bug Fixes

* **chat:** styling of in-progress code blocks ([11be499](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/11be49996859f046d0f5051448bce03d8b0add0d))


### Features

* syntax highlighting for gitlab duo chat ([98f3dce](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/98f3dce54facb65eb170026fa96dc453bc01dfea))



# [5.1.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.0.0...v5.1.0) (2024-07-26)


### Bug Fixes

* Omit invalid chat input field for GitLab 17.2 and earlier ([0a903aa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0a903aa78b762fe2c8216ba14dc32c6d10e05b47))


### Features

* add code suggestions quick pick menu ([67416ad](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/67416ad9ae679de1fb73a1fd5dbffd3c4e04ecca))



## [5.0.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v5.0.0...v5.0.1) (2024-07-26)


### Bug Fixes

* Omit invalid chat input field for GitLab 17.2 and earlier ([0a903aa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0a903aa78b762fe2c8216ba14dc32c6d10e05b47))



# [5.0.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.21.0...v5.0.0) (2024-07-23)


### Features

* consolidate authentication methods into one command ([c21c63e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c21c63e3df8c318e67ebf13af1a3b193e44609b2))
* remove the VS Code Auth provider in favor of custom OAuth flow ([67e6663](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/67e6663f0149356cd88d62d91794fcd60166af4b))
  - This is a **breaking** change in a sense that if any 3rd party extension relied on the `gitlab` authentication provider, it will temporarily stop working.
  - More information in [!1778](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1778).



# [4.21.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.20.0...v4.21.0) (2024-07-16)


### Features

* add "enabled supported languages" setting ([053938a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/053938acd505e899e9f67279c21536b3565d34db))
* add command to toggle Code Suggestions for current language ([2ca138a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2ca138ad6b428cfc6798b70d7dd2978f51507ba7))



# [4.20.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.19.0...v4.20.0) (2024-07-10)


### Bug Fixes

* correct GitLab casing ([35c28be](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/35c28be6e4c1c8f07959676fd6f3e005e60b6267))
* race condition that caused empty chat responses ([2b55f2d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2b55f2d394513445f3f698dd9e9288d083ff5dd2))


### Features

* add open tabs context setting ([b4aadde](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b4aadde0b1472302bc229ccbc51966c2fe1ba5fa))



# [4.19.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.18.0...v4.19.0) (2024-07-03)


### Features

* Add `draft` custom query property and treat `wip` as an alias ([c4075a6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c4075a6c2f2dec04104e7bfb5474896cd0b9a101))



# [4.18.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.17.0...v4.18.0) (2024-06-27)


### Bug Fixes

* LS initialization to enable source maps ([0d34c56](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0d34c565487a9d0e06b5baa1ac6582d59f0e6a92))


### Features

* add a command to restart language server ([d5d0097](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d5d00978de5f030c5e816b5ab795c4a620c26a0d))



# [4.17.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.16.0...v4.17.0) (2024-06-25)


### Features

* if gitlab.debug is on, show language server stacktraces ([111be12](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/111be1297d94a422c5f28391480b9c31f012792a))



# [4.16.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.15.1...v4.16.0) (2024-06-17)


### Bug Fixes

* **dev:** support windows build when copying language server assets ([7c8c72b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7c8c72b5d48d8256ef47db2d6dc577077f87af43))
* **e2e:** increase wait times ([506c574](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/506c574b4dc0c50375328c5eec713952e88706c0))


### Features

* send code suggestion requests directly to cloud connector ([0f990d5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0f990d56e00ed57ab4e4a8aa57927e592cd7e9ec))



## [4.15.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.15.0...v4.15.1) (2024-06-13)



# [4.15.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.14.1...v4.15.0) (2024-06-13)


### Bug Fixes

* **e2e:** clean up allure report code ([5a78d05](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5a78d0531e34c508f4520c100a7c8a383f279187))
* Fixing broken URL ([bc86e48](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bc86e48ca200822ed9968a2636e747176f0cce4f))
* Sync telemetry setting to the LS ([42d7f51](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/42d7f51c45e7b298b976751677658d2c858d8457))


### Features

* read PAT from file ([67d8b5e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/67d8b5e78e2499e84db95d51b18a1ac098eeba10))
* Language Server: open file tabs advanced context resolver (feature flagged) ([e6610a3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e6610a32ab1b0a53d9ce3430f7abace1cefdb8e3))
* Language Server: introduce 15s default timeout for requests ([df29178](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/df29178421b56d87f07ea94b445220e7aad46ec5))


## [4.14.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.14.0...v4.14.1) (2024-05-31)


### Bug Fixes

* Ensure code suggestions state is updated after init ([4c3d7eb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4c3d7eb448e47d8fb9c83a5cd358281d3d3c10f6))



# [4.14.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.13.0...v4.14.0) (2024-05-29)


### Features

* [Support for multiple suggestion](https://gitlab.com/groups/gitlab-org/editor-extensions/-/epics/50) is now on by default.
* Combine Open in GitLab commands ([5a8d69b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5a8d69be15c98715315a4a2a868eb64b6732e283))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1619](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1619) 👍
* Telemetry for multiple suggestions ([9bb4e81](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9bb4e81a2b5b45016b8fd87874c813a35d95846f))



# [4.13.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.12.0...v4.13.0) (2024-05-24)


### Bug Fixes

* run code suggestion on gitlab-web-ide scheme files ([609c63f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/609c63f6c3f8589bcb631be8a977c7c805c100b9))


### Features

* Add timeouts to GitLab API calls ([1abe5b0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1abe5b074c7187d96a97c05df5c22e21bc5bf3ac))
  * Implemented by [Elian Cordoba](https://gitlab.com/ElianCordoba) with [MR !1559](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1559) 👍



# [4.12.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.11.0...v4.12.0) (2024-05-23)


### Bug Fixes

* hide Duo Chat features when disabled for a project ([47d4954](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/47d495440e019020b55e792d7d71fe9d4827342a))
* respect duoFeaturesEnabled setting for Duo Chat actions ([a012a62](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a012a62707bf795e43eb48f79f5eb35d8a0355f5))
* WebIDE code suggestions respect policies ([c43f16c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c43f16c9da51e4d14a633533a0aa5fecbd2f7d8f))


### Features

* add support for html, css, shell, sql (in non-LS mode) ([1a3acdf](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1a3acdf4d050f7171e7951fa64f67bcfb24dba0e))

### Language Server Updates

#### Bug Fixes

* only set intent when generation is detected ([65987e2](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/65987e2c46dfa261bc8cf81a713ea316c6be59ba))


#### Features

* Add additional attributes to code suggestions telemetry ([2853f70](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/2853f708812eafe6e646cf7630656087ce6014a1))
* better comment detection ([990b08c](https://gitlab.com/gitlab-org/editor-extensions/gitlab-language-server-for-code-suggestions/commit/990b08c83140f2ada640e314b6ba133791186136))


# [4.11.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.10.0...v4.11.0) (2024-05-13)


### Bug Fixes

* Checkbox background not styling correctly ([36a7468](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/36a746822d7ca9fadb53ac72978ce921d4e0a63a))
* **e2e:** adjust wait for prompt text ([d02c1c1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d02c1c1392ca564eed65ead8aaab8d21bc3f1048))
* **e2e:** wait for tab in e2e code suggestions spec ([dc81c93](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dc81c93485608305b6edcb5d4ad5192058e0697d))
* FeedbackForm snowplow event missing "environment" ([d7b4ea0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d7b4ea01607f167eb5498490283cd1d18235ddf3))
* Handle malformed setting for user languages for CS ([6f91db2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6f91db221983e492a95ec0ed539c317d7557906b))


### Features

* Add Ide Extension Context to Feedback Telemetry ([4862d61](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4862d6130c43075511c1d0f743d148a6091e6d2d))
* Add markdown to code suggestions supported langs ([545f78d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/545f78d9dd80ee07fb055900306e4526ddace632))
* Add user-configured CS languages ([6c8792a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6c8792aad0a7cc2ac4394ef258d9ccd5ae2637ec))
* Add user-configured CS languages ([ee02432](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ee02432ffb0d9252eef1e6d9b59354e86ef0a838))



# [4.10.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.9.0...v4.10.0) (2024-05-02)


### Features

* **Code Suggestions:** faster code generation streaming ([dcf3161](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dcf3161f56fd67c9e2a15bf72380a197f22619b9))
* **Duo Chat**: Adjust color of DuoChat body alert ([a551d82](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/commit/cf4513991a4b45a0827461999f770e827a551d82))
* **Developer Experience**: Use forward slashes when finding webfont icons ([766c106](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/commit/50da72f320cfcb1dc4d6cc372f6761e7c766c106))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1535](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1535) 👍



# [4.9.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.8.0...v4.9.0) (2024-04-11)


### Bug Fixes

* add whitespace before created_at in MR overview ([a57a126](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a57a126033491e7c82851e426693232bdce7f9ce))
  * Implemented by [Florian Dageförde](https://gitlab.com/dagefoerde.florian) with [MR !1486](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1486) 👍


### Features

* **chat:** add `/clear` command to Duo Chat ([4a31a73](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4a31a73e97654f7985d2230fae5c491cc5f90573))
* **chat:** added setLoadingState to chat view ([3d25f8c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3d25f8c7e9496ab3e40ebfbf972c3680ae15803f))
* **chat:** removed Experimental badge ([b7e2086](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b7e208676c499940b6271515462b9674eb13251d))



# [4.8.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.7.0...v4.8.0) (2024-03-21)


### Bug Fixes

* **code-suggestions:** detect and cleanup detached streams ([b68ab53](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b68ab53329de8c2382ba063cbd50a8b8e375892e))


### Features

* Add fallback text if CI status does not have illustration ([270bc4f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/270bc4f7b2757a6c19ac1939266e6321be3334d1))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1466](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1466) 👍
* detect unsupported GitLab version when adding token ([5f89b78](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5f89b784093c6506b02314536e2580659df54838))
* Send telemetry event when suggestion stream is accepted ([40ce843](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/40ce8431bffb432bd52d3041fced6c835b49b608))
* Show project folder as tooltip in Merge Request View ([0e1e365](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0e1e365fc5f906a7d8207c8fdfa9552bd3d2bba8))
  * Implemented by [Florian Dageförde](https://gitlab.com/dagefoerde.florian) with [MR !1474](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1474) 👍



# [4.7.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.6.0...v4.7.0) (2024-03-04)


### Bug Fixes

* **chat:** Update to latest DuoChat ([f896ecc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f896eccf739d1cab89b2845ed0414a6126350a8d))
* **code suggestions:** Fix for streaming logging in the Language Server ([c6bf2195](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/commit/c6bf2195adef27da49cdd8d5b3a358b36bc0dcea))

### Features

* Introduce updated illustrations for Pending Jobs ([32e84ac](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/32e84ac7c2243c23c0dd4eb1d8e1ddbbd890ef47))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1449](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1449) 👍



# [4.6.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.5.1...v4.6.0) (2024-03-04)


### Features

* **code suggestions:** improve HTTP error reporting in the Language Server ([da643976](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/commit/da643976f09bf79c868f160eadb2c53adc011c45))



## [4.5.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.5.0...v4.5.1) (2024-02-29)


### Bug Fixes

* Send HTTP Agent config to Language Server ([c544fe8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c544fe84307d4b9f6bad9f4df3586dd896f0f84d))



# [4.5.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.4.0...v4.5.0) (2024-02-29)


### Bug Fixes

* stale token cache prevents creating an account ([3adb30b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3adb30b20c4adbb220b9a6e590922b274755db38))


### Features

* **chat:** Update GitLab/UI and add tailwind support ([df5f738](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/df5f7386da1df5919dfd6f70843258f8060e76d1))
* decorate MR files ([763b823](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/763b823d4b6a050c15e8646447071c0be920dbf3))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1434](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1434) 👍
* Use GitLab logo in Git Clone menu ([4290b5b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4290b5bc31946e89718ed49805ec67c94164982f))



# [4.4.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.3.2...v4.4.0) (2024-02-26)


### Features

* **web-ide:** Use auth provider if available ([ba49bf7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ba49bf7c0f2f10ef509478ad1ca9593c939375d7))



## [4.3.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.3.1...v4.3.2) (2024-02-26)


### Bug Fixes

* **chat:** Increased timeout for Web View init ([35080e6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/35080e6d3f1f45cb9ca665617e82b290f19bb5f6))



## [4.3.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.3.0...v4.3.1) (2024-02-22)


### Bug Fixes

* **security_scanning:** Hide reports for GitLab Community Edition ([2780116](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2780116433842c9264063c80b32ebbb2d417af22))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1417](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1417) 👍
* **security_scanning:** Improve fetching security report results ([0e843d0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0e843d00b2c4c35fb6b4ca82df0419bff3c5864c))



# [4.3.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.2.0...v4.3.0) (2024-02-20)


### Bug Fixes

* **chat:** Increase the timeout for Web View initialization ([735cae4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/735cae4d37715453a96f8212c6654ddc1b3ec8f4))
* commenting with just slash-commands shows error ([a8a762b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a8a762ba206dbaaf4093802c980d3bfeab4bc6bd))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !1421](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1421) 👍
* error during status bar initialization breaks extension ([8c017f4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8c017f42a46246fedf30e2d3ffbc8c22648c1628))


### Features

* **chat:** set up Duo Chat WebView with initial state ([b2ea32c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b2ea32cb41dbcb2d3c7ed8ece5e68366e46c9cd4))



# [4.2.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.1.0...v4.2.0) (2024-02-15)


### Features

* **code suggestions:** enable license check feature flag ([30d0254](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/30d02549d5f4e2942e37d936d8727836cc98575c))



# [4.1.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v4.0.0...v4.1.0) (2024-02-14)


### Bug Fixes

* **chat:** Update to latest DuoChat ([ecd32e1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ecd32e125e2bf0e8a3bc1c4157b54282fd87292b))
* Sync load scripts in webviews to fix CORS ([e77140a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e77140a17ad15f50f2cfa76c37f2c205ee5cf458))


### Features

* **code suggestions:** show license status ([9958314](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9958314a0472611d2b69ef81fb4b8005a97536d3))



# [4.0.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.101.1...v4.0.0) (2024-02-08)

This is a breaking change because the GitLab Duo Code Suggestions feature will now only work with GitLab instances 16.8 and higher.

### Bug Fixes

* show comments on MR diff (and remove decorations) ([95b92be](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/95b92be3b321d038b705f500d1d0f4d68b735284))


### Features

* **desktop:** stop code suggestions for gitlab projects if disabled ([8bbda54](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8bbda545047503f903443e52db0b99b4b431cf7b))
* Minimum GitLab version warning ([5985c26](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5985c2698739958a85f7f886073e017e873e7815))
* Show progress status and pipeline error states ([7f352f5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7f352f5b06b386a454f525e226ddd454da61e961))



## [3.101.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.101.0...v3.101.1) (2024-02-01)



# [3.101.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.100.0...v3.101.0) (2024-01-30)


### Bug Fixes

* **chat:** catch streaming error in webide to not crash chat ([572c7f0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/572c7f0204ca253a5c9558eba537fafa186ebf59))
* **chat:** leading assignment of gitlab:chatAvailable in browser ([5972f54](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5972f54834ec58f73965fd190ddd212542e329ef))
* **chat:** removed unnecessary dependencies ([bdba804](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bdba804a4dc26de1649276051d1ddc5cf15187fe))


### Features

* Add support for image diff in Merge Requests ([6cdb5e1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6cdb5e1eb7fcd78131b7e92a7814a52880bd8e79))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1319](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1319) 👍
* **chat:** accept platform as a param for 'getChatSupport' ([d55f308](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d55f3083d2a64ec5d52051ad1e554dec1622e512))
* **chat:** process `/clean` slash command ([402c43e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/402c43ee17e11fc608c4962891d753d9c9b55d00))
* detect revoked token and offer re-authentication ([ea76c39](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ea76c3919ec078a510302291425d6575611f41e4))
* Display trigger jobs in sidebar ([b1765f2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b1765f28afe5a177159676bb03efa548ca3c0d21))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1336](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1336) 👍
* Don't use Diff when comparing empty media file ([8e300e5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8e300e5478e9c8ed8d744b9e623dbc8e2dbab21c))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !1355](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1355) 👍



# [3.100.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.99.0...v3.100.0) (2024-01-17)


### Features

* **chat:** show chat only when it can be used by user ([d5cd1f0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d5cd1f07b7ed715b09faab86438df80a7ca729b4))



# [3.99.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.98.0...v3.99.0) (2024-01-16)


### Bug Fixes

* Clean code style ([76a9dc0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/76a9dc00d63df8c76253c42a271b7084411557b2))
* Specify ignoreCertificateErrors option for the language server ([ad4a077](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ad4a077573e0e7e7d0e713041efc35124a506989))


### Features

* Move streaming decision to the LS ([99a1a0f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/99a1a0fa92bbfc03954ee6594a42d2bbc692a938))



# [3.98.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.85.0...v3.98.0) (2024-01-11)


### Bug Fixes

* Fix broken link fragments in README ([502dbbd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/502dbbdf36f0a61f7867da6588e28737fb048653))


### Features

* **chat:** enable Duo Chat for SM instances ([0e4e04b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0e4e04bf9603876cf86970f8b313ad04782114ba))
* Display comment thread state using VS Code API ([12775bb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/12775bb9f4292a31ca6607e916ba09990437aa4d))
* make location blob path linkable ([ca7d389](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ca7d3894e928349211e6b289eef4132de742d060))
* render links in security findings webview ([f064166](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f064166f07b7bbdb7b4eaec9f984dda905f710b3))


# [3.97.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.96.1...v3.97.0) (2023-12-26)


### Features

* Update label for code suggestions flag ([cf849e3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cf849e31598c12eb9e3725e0b961a27a84ee2400))



## [3.96.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.96.0...v3.96.1) (2023-12-21)



# [3.96.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.95.0...v3.96.0) (2023-12-21)


### Bug Fixes

* **cs-stream:** Clean loading icon flicker ([e3d45bb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e3d45bba6358f233c497dc9d5345a44fa62fd88f))


### Features

* add vulnerability identifiers & solution ([f384024](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f38402496af690b95e39311d0f9e1f8a04aacd26))
* enable streaming for the chat ([5e5432c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5e5432cfcfa85713a47ee8a453dd2b25a5a42be0))
* enable suggestion streaming by default ([65a968a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/65a968aa1ca422d65a7ff1b288a400163c3b8bba))
* Support using web ide in the language server ([bda65ec](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bda65ec3b4bd2a30133be4120bfb23e23c30984e))



# [3.95.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.94.0...v3.95.0) (2023-12-20)


### Bug Fixes

* Fix language server browser build path ([f3cfd39](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f3cfd39af82f5d67bc3cf536368582bf003a68ef))


### Features

* **code_suggestions:** Added LSP based streaming ([56b2cc8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/56b2cc8b0a654317b68614b8b85a8f6986fac44f))
* Decide whether to stream data based on the intent ([140cb27](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/140cb27feb3c431353c1f69e970565f86aa9d0c8))



# [3.94.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.93.1...v3.94.0) (2023-12-19)


### Bug Fixes

* unblock build with path and fs fixes ([738161d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/738161d70b5538450869cd504a3e14f294d472e4))
* update min VS Code version to 1.82.0 to support Language Server ([e98d557](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e98d5574312975e119800b110f86840862fd0897))


### Features

* add vulnerabiltiy location to webview ([5db715a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5db715a300e1e6fda1c90bddddd54461c2061ffe))
* Ensure HTTP agent settings are used in VSCode with keepalives ([af38e25](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/af38e25b48bbb8e7b64406225f6aa870641514e5))
* Use Keep-Alive connection to connect to server (part 1) ([2138233](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/21382337e9de767ee2705903b1f1b12c99682f86))

### Community contributions 👑 (not user-facing)

* Fixed by [@mjgardner](https://gitlab.com/mjgardner)
    * [docs: fix default custom queries link](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1274) 👍🏽


## [3.93.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.93.0...v3.93.1) (2023-12-14)


### Bug Fixes

* enable suggestions cache by default ([8d7865f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8d7865f4b17e2347642e85d2452baa6814d1d808))
* End LS request when canceled ([ce78d2c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ce78d2c425063016d8a8a51384ba76dd78743b40))



# [3.93.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.92.0...v3.93.0) (2023-12-13)


### Features

* Specify project path in LSP workspace settings ([7aad253](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7aad253a3e9249c480d9dddc03089f6ba8c4a803))



# [3.92.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.91.0...v3.92.0) (2023-12-08)


### Features

* add refactor command to Duo Chat ([3c87525](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3c875251f4e340fb38a5c1dee132a133cd9ddb6e))
* Support log level configuration ([6288dbd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6288dbdc983ec029f50622be9c8c911178d72cd8))



## [3.91.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.90.1...v3.91.0) (2023-12-06)


### Bug Fixes

* upgraded @gitlab/ui package to 71.6.0 ([2b3ce81](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2b3ce817dc898cdfb040e1144b5152e6ee520298))


### Features

* enabled slash-commands for DuoChat ([3dc0d9d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3dc0d9d648f12dc6dd424adda6a719a9d2d686c1))
* migrate chat commands to slash commands ([82bdfb8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/82bdfb854ee6b5f6ebaeaabff19c51d21cc55f40))



## [3.90.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.90.0...v3.90.1) (2023-12-04)


### Bug Fixes

* Code suggestion gutter icons in Web IDE ([e1dd6ad](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e1dd6adfa0bb29065f76d0642b10cea8d9048c34))
* Do not enable LSP in Web IDE ([97cc301](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/97cc301754af0d3b52f4e1c6fbfe7fbe23895fa6))
* Fix gutter icon persisting across tabs ([553ff7e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/553ff7e726b583c30e3e7e027f7483bca626ce82))


### Features

* Add "codeSuggestionsClientDirectToGateway" feature flag ([7a6e048](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7a6e048fa9aa59b2b74279ec7983feac08579e07))
* add passing suggestions cache config flag ([f9ba575](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f9ba5750ba28e2d37f986c48372fc0fac38d7708))
* Bump version of LSP to v3.20.0 ([cbe85a2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cbe85a2a6e687919e2a5ba41f702d477c25d53db))
* open securty finding in sideview ([4279470](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4279470e39fbe3e4aec984ae296f94cca2dad5c0))
* render markdown for security findings ([c0749b8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c0749b8ee3a960540da5585b83b4f804a8da9838))



# [3.90.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.89.0...v3.90.0) (2023-12-03)


### Features

* Code suggestions gutter icon status ([24373b4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/24373b42eaaef7783bacb168b8d97f78b79ae3cd))
* use LS Code Suggestions by default ([e7ee390](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e7ee3906e2abe88722c8f1a42c33114c0395bce4))



# [3.89.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.88.0...v3.89.0) (2023-12-01)

This Version also updates code suggestions Language server from version [3.17.0 to 3.18.1](https://gitlab.com/gitlab-org/editor-extensions/gitlab-lsp/-/blob/main/CHANGELOG.md).


### Features

* **security:** add more security finding details ([025bc54](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/025bc54479540cfbd2773a9e7f1b917ef12016f8))



# [3.88.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.87.0...v3.88.0) (2023-11-29)


### Bug Fixes

* add npm install for commit-lint ([9aa45a6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9aa45a68788bd32f40f755d80d9eef3918426180))
* **code suggestions:** increase size of status icon ([9a37631](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9a3763162ebb0b2fc14ddda54cd3b238c5051626))
* **code suggestions:** un-fill loading and error status icon ([5a78020](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5a7802083526856d80cf96a552af83b12d7e3136))
* **status icon:** Handle parallel completion requests ([6a84948](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6a84948caac290948a824bf76c6c18728b2d7fdf))


### Features

* language server suggestions react to api errors ([0fdd611](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0fdd611ce9e64f0e363466049f5f52e8e2ef7617))
* show loading state for LS suggestions ([80651b2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/80651b2ca88809a9966e4f7992f205a112e193e9))
* suggestions status manager handles missing account ([1a35c74](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1a35c7499a160b411e3bbaf50f4a4167467de023))



# [3.87.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.86.1...v3.87.0) (2023-11-24)


### Bug Fixes

* Only catch unchanged_document in intellisense context ([ca24ae7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ca24ae72e7081ada2105c8eda7b98a1c45301c67))


### Features

* Language Server listens on account changes and updates token ([5b2aea3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5b2aea31164105490c271fa60af5482114569ed6))



## [3.86.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.86.0...v3.86.1) (2023-11-17)


### Bug Fixes

* Do not request suggestions when deleting or adding spaces ([d56d71f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d56d71f3c683bc91ad86071c0bc93952b30ba8fe))



# [3.86.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.85.1...v3.86.0) (2023-11-16)


### Features

* add Duo Chat toggle setting ([32e46bb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/32e46bbea369296710650013e8e35f113f15ec0f))



## [3.85.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.85.0...v3.85.1) (2023-11-16)

### Bug Fixes

* chat role graphql type ([5c0f8fe](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5c0f8fe394a9f7eb0fca1940afb3ee1a17c450ea))
* correct border on checkboxes in chat ([8346281](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8346281a0e54322d0e870ca9080d9c90fbcd6b3b))
* do not throw when remote URL is unexpected ([575318a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/575318a9eaaa69b5a81ae51a9a2cf620590001f0))
* enable starting multiple LS at the same time ([c5889f1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c5889f1c003af2de0f41d295fcb28e07e5d203fb))
* git clone now lets you select an account ([3f95993](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3f959935035140b97f6e5316839a5f6ce5e31b96))
* hid SVG sprite for Duo Chat ([03e8269](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/03e826984dda5e24368d0f2ac6cd73eeb70e5315))
* **language-server:** correct feature flag usage ([43a2a11](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/43a2a119f234bea6795e73c76e36057b94e82204))
* Sends only the relative Path ([822bcd3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/822bcd3b9d4e9ea5e6f464d938e97cca397df9b3))
* **snowplow:** Fixed issues with duplicate events being sent to Snowplow ([e5c4555](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e5c4555f6b04f990828794c20318a0d103163b1a))
* switched to basic CSS variables for Duo Chat ([ec6f0b8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ec6f0b8eadfa053d19c9632c9270b15f580fbb59))
* **telemetry:** Assure code suggestion telemetry state manager exists ([f0a72fc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f0a72fc3d97dcc886fd751213561f96b9ca00139))
* **telemetry:** Fixed issue with telemetry category ([0f16d59](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0f16d59fb0aff6b5aea2c9053e8b7f081491616e))
* **telemetry:** Reject open suggestion sooner in the life cycle ([c0ecc68](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c0ecc6810865fab2b3df66ae37b684abc7a6b96d))
* the OS keychain issue is not Ubuntu-specific ([d5ed8d4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d5ed8d4f9ef0717df322402f2016ce8fcbdd0878))
* Update AI enable setting with correct config target ([efa9387](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/efa9387385fdf75baa547977192792671a103d09))
* update API error handling ([2148c24](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2148c24fedb0c487e3be5c56c7aeb7fc7996b95f))
* updated gitlab-ui to 67.3.3 ([08e6aad](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/08e6aadd190856e8de4838b5c005f1209e6b229e))
* user feedback modal to not overlap scrollbar ([9414692](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/94146923e936e9b6e5d7e4783e4948a69b17972c))


### Features

* Add Generate Tests chat feature ([3bf3a73](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3bf3a7301adcc9aa929fc0ff247edaaa7beb6027))
* add message extras display to the chat ([cb77cf1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cb77cf1c67046f69478b6f05f1b5183a08ea2a9c))
* add shortcut for toggle ([d61cf59](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d61cf597a32b8b129a96637d06bc5a844f99951f))
* Add token validation ([6391115](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/639111595bb7c9f95fbeb06f2f63be3bfd695ec9))
* allow data: protocol in src ([1956107](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1956107151a501d3a5d2c9bbce44c92ac1305f02))
* Allow Duo Chat to be used outside of GitLab project ([a1a44a6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a1a44a6c571c99b79f6d8a078422ae33874c9528))
* allow to use Duo Chat only with SaaS accounts ([45fc7fc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/45fc7fc81ad7906051a5a62d34ddd53950aff2c5))
* Check for completion feasibility ([7f610ff](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7f610ff05f2cba24a573ed9de443bdc7942f2ff0))
* Enable code suggestions telemetry in browser environment ([83d7c0b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/83d7c0b25ba1b1fd51101a7b29aec4a62693eadc))
* GitLab Duo chat as Vue2 application ([a488be9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a488be94d90131ade80854f9bdf91225872dd0c2))
* integrate language server ([0a5daa2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0a5daa284476aab896ef698bddd7913baa82f835)), closes [#803](https://gitlab.com/gitlab-org/gitlab-vscode-extension/issues/803)
* Limit max height of codeblocks in the chat ([ebf57db](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ebf57db1c057365453248dadf0d7ec5474d3ddce))
* Provide file context to duo chat ([65af6c4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/65af6c4f4d8d7a3703c360ad46c3547d7c6a1eb5))
* revert "add Duo Chat toggle setting" ([ba3b480](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ba3b4800c44deaae7e2a6a6dbf75d2c6acca723d))
* **secure:** uncapitalize severity label in treeview ([e42510d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e42510dfa686a5f4cd92faaab5183754ee839a78))
* send client context to LS ([1193cc1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1193cc155292b7db284caa1931a2c30d07758a19))
* Send feedback for gitlab duo chat ([7c027f4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7c027f489f48c24d3ed47aed6a67f51ca39c9991))
* send language with Code Suggestions request ([7bb09a1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7bb09a16b0ebf36f613db968b2e1af6d24af5c4b))
* send suggestion accepted event to LS ([b0f6d03](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b0f6d035d5a904535e1e3e7040ab9b33d41668a4))
* show count for security findings groups ([26cdc8c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/26cdc8c0072be688e0bbd6e73ee6de26ba2f6e10))
* support inline completion from LS ([a377c7d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a377c7df8f072ddc50a2a2e912de9cc9ed87ac67))
* switched chat to GlDuoChat component ([8bcf25c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8bcf25ca5dc5747558f5a415034bf0974b4a5173))
* **telemetry:** Add status code ([b0c0165](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b0c01652a238d40aa7fa239f75b5e20fe4b89332))
* update Chat hotkey ([7208c8e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7208c8eec65cd8d16b2a2d39f913742d649436f2))
* update prompt content with response from API ([a93a693](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a93a693bd65c98b7ec184fc831901bac1fc376eb))
* upgraded gitlab-ui to 68.7.0 ([1407445](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/14074453db9b13655c1f8d50af6ddd5c77bd34b7))


# [3.85.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.75.0...v3.85.0) (2023-11-16)

This version hasn't been released due to a CI issue.


# [3.84.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.83.0...v3.84.0) (2023-11-10)


### Features

* send client context to LS ([1193cc1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1193cc155292b7db284caa1931a2c30d07758a19))
* send suggestion accepted event to LS ([b0f6d03](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b0f6d035d5a904535e1e3e7040ab9b33d41668a4))
* switched chat to GlDuoChat component ([8bcf25c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8bcf25ca5dc5747558f5a415034bf0974b4a5173))



# [3.83.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.82.0...v3.83.0) (2023-11-06)


### Features

* Add token validation ([6391115](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/639111595bb7c9f95fbeb06f2f63be3bfd695ec9))



# [3.82.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.81.0...v3.82.0) (2023-10-31)


### Bug Fixes

* enable starting multiple LS at the same time ([c5889f1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c5889f1c003af2de0f41d295fcb28e07e5d203fb))
* the OS keychain issue is not Ubuntu-specific ([d5ed8d4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d5ed8d4f9ef0717df322402f2016ce8fcbdd0878))


### Features

* Add Generate Tests chat feature ([3bf3a73](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3bf3a7301adcc9aa929fc0ff247edaaa7beb6027))
* add message extras display to the chat ([cb77cf1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cb77cf1c67046f69478b6f05f1b5183a08ea2a9c))
* support inline completion from LS ([a377c7d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a377c7df8f072ddc50a2a2e912de9cc9ed87ac67))
* update Chat hotkey ([7208c8e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7208c8eec65cd8d16b2a2d39f913742d649436f2))



# [3.81.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.78.0...v3.81.0) (2023-10-19)


### Bug Fixes

* git clone now lets you select an account ([3f95993](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3f959935035140b97f6e5316839a5f6ce5e31b96))


### Features

* show count for security findings groups ([26cdc8c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/26cdc8c0072be688e0bbd6e73ee6de26ba2f6e10))
* **telemetry:** Add status code ([b0c0165](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b0c01652a238d40aa7fa239f75b5e20fe4b89332))



# [3.80.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.78.0...v3.80.0) (2023-09-29)


### Bug Fixes

* chat role graphql type ([5c0f8fe](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5c0f8fe394a9f7eb0fca1940afb3ee1a17c450ea))
* **language-server:** correct feature flag usage ([43a2a11](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/43a2a119f234bea6795e73c76e36057b94e82204))
* **telemetry:** Fixed issue with telemetry category ([0f16d59](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0f16d59fb0aff6b5aea2c9053e8b7f081491616e))


### Features

* add shortcut for toggle ([d61cf59](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d61cf597a32b8b129a96637d06bc5a844f99951f))
* integrate language server ([0a5daa2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0a5daa284476aab896ef698bddd7913baa82f835)), closes [#803](https://gitlab.com/gitlab-org/gitlab-vscode-extension/issues/803)
* revert "add Duo Chat toggle setting" ([ba3b480](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ba3b4800c44deaae7e2a6a6dbf75d2c6acca723d))
* Implemented by [@rosskipp](https://gitlab.com/rosskipp) with [MR !1024](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/1024) 👍




# [3.79.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.78.0...v3.79.0) (2023-09-29)


### Bug Fixes

* chat role graphql type ([5c0f8fe](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5c0f8fe394a9f7eb0fca1940afb3ee1a17c450ea))
* **language-server:** correct feature flag usage ([43a2a11](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/43a2a119f234bea6795e73c76e36057b94e82204))
* **telemetry:** Fixed issue with telemetry category ([0f16d59](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0f16d59fb0aff6b5aea2c9053e8b7f081491616e))


### Features

* add shortcut for toggle ([d61cf59](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d61cf597a32b8b129a96637d06bc5a844f99951f))
* integrate language server ([0a5daa2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0a5daa284476aab896ef698bddd7913baa82f835)), closes [#803](https://gitlab.com/gitlab-org/gitlab-vscode-extension/issues/803)
* revert "add Duo Chat toggle setting" ([ba3b480](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ba3b4800c44deaae7e2a6a6dbf75d2c6acca723d))



# [3.78.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.77.1...v3.78.0) (2023-09-20)


### Features

* **secure:** uncapitalize severity label in treeview ([e42510d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e42510dfa686a5f4cd92faaab5183754ee839a78))
* update prompt content with response from API ([a93a693](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a93a693bd65c98b7ec184fc831901bac1fc376eb))



## [3.77.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.77.0...v3.77.1) (2023-09-15)


### Bug Fixes

* Update AI enable setting with correct config target ([efa9387](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/efa9387385fdf75baa547977192792671a103d09))


### Features

* Limit max height of codeblocks in the chat ([ebf57db](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ebf57db1c057365453248dadf0d7ec5474d3ddce))



# [3.77.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.76.1...v3.77.0) (2023-09-11)


### Features

* Enable code suggestions telemetry in browser environment ([83d7c0b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/83d7c0b25ba1b1fd51101a7b29aec4a62693eadc))



## [3.76.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.76.0...v3.76.1) (2023-09-06)


### Bug Fixes

* **snowplow:** Fixed issues with duplicate events being sent to Snowplow ([e5c4555](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e5c4555f6b04f990828794c20318a0d103163b1a))
* **telemetry:** Assure code suggestion telemetry state manager exists ([f0a72fc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f0a72fc3d97dcc886fd751213561f96b9ca00139))
* **telemetry:** Reject open suggestion sooner in the life cycle ([c0ecc68](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c0ecc6810865fab2b3df66ae37b684abc7a6b96d))



# [3.76.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.75.0...v3.76.0) (2023-09-04)


### Bug Fixes

* Sends only the relative Path ([822bcd3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/822bcd3b9d4e9ea5e6f464d938e97cca397df9b3))


### Features

* Check for completion feasibility ([7f610ff](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7f610ff05f2cba24a573ed9de443bdc7942f2ff0))
* GitLab Duo chat as Vue2 application ([a488be9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a488be94d90131ade80854f9bdf91225872dd0c2))
* send language with Code Suggestions request ([7bb09a1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7bb09a16b0ebf36f613db968b2e1af6d24af5c4b))



# [3.75.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.74.0...v3.75.0) (2023-08-30)


### Bug Fixes

* Fix gitlab platform creation for code suggestions ([36debb3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/36debb321c98d6084f10691c4dd3a973444eccc6))
* handle security findings validation gracefuly ([3d20b8a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3d20b8a090f2a54f467aa70f956b487a76fc777e))


### Features

* introduced support for Vue2 webviews ([679c62b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/679c62b4ffa87f1797f3c16b83028f484ad9fd2a))
* mark chat window as experiment ([cd46c85](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cd46c854acfdec51fc81badaf74f1e5161922247))
* **telemetry:** Added Track Telemetry to Platform ([179fb19](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/179fb19e652380e7e8bd7cc464cda2676c1e9d48)), closes [gitlab-org/modelops/applied-ml/code-suggestions/ai-assist#254](https://gitlab.com/gitlab-org/modelops/applied-ml/code-suggestions/ai-assist/issues/254)



# [3.74.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.73.0...v3.74.0) (2023-08-21)


### Features

* add toggle on/off for code suggestions ([efee9a1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/efee9a13b96f41e461e270299c870706269fc63e))
* Enable security findings ([d2887f4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d2887f4b98821a32ae861b2b7f45d3edbcac614e))
* Remove project requirement from Code Suggestions ([d1ae632](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d1ae632dbeac03cec379cd635c1291bd9734aa05))



# [3.73.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.72.3...v3.73.0) (2023-08-16)


### Bug Fixes

* Handle security findings project roles ([b840523](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b8405233fd8caa68cfc9389fa38e0db9caef51aa))
* handle security findings when report is empty ([6302a8c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6302a8cb6f59c862352fe8c3254665a63c21520b))
* Hello world command showing up in Web IDE ([5434c10](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5434c10e4a2803d302e474511b78827ad4d37c83))
* properly mark terraform/terragrunt as supported languages ([24df900](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/24df900e3bcb553d982d3f10449a966d6792b258))
* respect vscode telemetry settings ([c0ea55a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c0ea55a5a1daa9fccb4ec32638ee9dbae5fdd1f6))


### Features

* Add code suggestions experiments data ([0bf93a6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0bf93a67979a9ebf1518aef0f394b685c5ad0301))
* add Duo Chat toggle setting ([1a151de](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1a151de85b3310e57647c66cd95af7a6f8ddf8ff))
* Add reset command to GitLab Duo Chat ([99a83ad](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/99a83ad449ebbfa40b3aea7d54cbdb84605f9330))
* add webview for security findings ([fac29a0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fac29a012e91d2f82abf75a3b329883889e550a0))
* hide chat window unless gitlab account is connected ([f7a77cd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f7a77cd1d1d223449e9e802e878b1077c711e4ac))
* Update GitLab Duo icon ([183eadd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/183eaddc724a083c5e1c85a3830253ab3ebcf3da))



## [3.72.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.72.2...v3.72.3) (2023-08-04)


### Bug Fixes

* use nonce to load chat webview app ([d98ba99](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d98ba99620cb3d4579f5f1b7b3df57b4f72afabd))



## [3.72.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.72.1...v3.72.2) (2023-08-03)



## [3.72.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.72.0...v3.72.1) (2023-08-02)


### Bug Fixes

* Update mediator command calls ([49db7e8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/49db7e87e62a1b73aceb357ec4b28e24f17c4aec))



# [3.72.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.71.0...v3.72.0) (2023-08-02)


### Features

* added the GitLab Duo Chat webview ([05aa83c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/05aa83c2f29baa8bf396dec4a3295d4efaf822db))
* improve chat ui ([c7a109c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c7a109c8c44b4dff56fc2d94d7e93441767f615b))



# [3.71.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.70.0...v3.71.0) (2023-07-27)


### Features

* swap mocked security report  data for real data ([d0a7459](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d0a74590b3e6118917c924eaf1b5a92524eacb22))



# [3.70.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.69.0...v3.70.0) (2023-07-26)


### Features

* enable code suggestions by default ([6129a92](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6129a9288b786cf41527165394b17bf7e429b277))
* introduce promotional banner ([f45489c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f45489c4d9f31f243e8d6164cd20e96ab8bde092))


### Performance Improvements

* dont wait for 5 seconds if chat response is ready ([8da7e31](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8da7e318727833c8b68c3517dd73f04eaa497c3c))



# [3.69.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.68.4...v3.69.0) (2023-07-25)


### Features

* Add language to code suggestions telemetry ([1ce24e3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1ce24e38025cd2b942c62832caf71823d1c5bbae))
* introduce "explain selected code" command for GitLab Duo Chat ([1afd135](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1afd1359b9f9e193117f07676e0887f1da1c7fb3))
* support terraform in code suggestions ([9125ee9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9125ee931e0a19fb0ef9b72ceb7a7ec4601a60f6))



## [3.68.4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.68.3...v3.68.4) (2023-07-20)

### Bug fixes

* Ignore erb files for code suggestions to improve internal team member Markdown experience
([4c1fa845](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/commit/4c1fa845b174ad2f1745d9e03dbae30e8448c19c))

## [3.68.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.68.1...v3.68.3) (2023-07-13)


### Bug Fixes

* broken issuable webview (couldn't initialize) ([3c6fadd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3c6fadde1135618fc1c4a75957580da0fe7c1fc9))



## [3.68.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.68.0...v3.68.2) (2023-07-13)

This is a rollback release because `3.68.1` broke the issuable webview. This version is identical to `3.68.0`.


## [3.68.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.68.0...v3.68.1) (2023-07-13)


### Bug Fixes

* handle edge case when getting GitLab URL for unsaved file ([21cac29](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/21cac2922262234c8c7ed300a8b13b84cdd55a34))
* report accepted suggestions in WebIDE ([09cc39c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/09cc39cbda524d69cfcdb19d6a58234192218953))
* **telemetry:** only count suggestions shown to the user ([3e1b6fe](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3e1b6fe70458422b129f7c60856f52f2924e46c7))



# [3.68.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.67.0...v3.68.0) (2023-06-26)


### Bug Fixes

* git clone not working for projects without repositories ([436b073](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/436b07316ff85c2b51ae89ffe813c68d215bed92))
* running job SVG is not showing ([0c28696](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0c286967ae2e28f4e342f38b1f74fad370a0f15c))
  * Fixed by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !857](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/857) 👍


### Features

* improve AI Suggestions UI status element to cover main scenarios ([b82cff1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b82cff16d4948ea258e8c1eeb463866ec581fc92))
* Include model data on telemetry ([ac2ff72](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ac2ff72b66ce5458e367731ef1ce70aa01950703))



# [3.67.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.66.0...v3.67.0) (2023-06-15)


### Bug Fixes

* add "single-file-component" languages ([cf4efe0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cf4efe02b779e239ec3de80f5ac66ab9f830b2fc))
* concise status bar indicators ([7c8b600](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7c8b60020328051359fe9869e84bd7abae9e6982))
* produce correct package json in watch:desktop job ([fd516cb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fd516cb22cf4b5450ae983d500c21b10d7913931))


### Features

* add status bar indicator to Workflow Code Suggestions ([8a0022f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8a0022fdf2a6f01f0c787fb5757e5330f544a750))



# [3.66.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.65.0...v3.66.0) (2023-06-08)


### Bug Fixes

* only suggest when authenticated and for known languages/schemes ([13d313f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/13d313f649bdd3532af2bcb3313770cc98c11371))


### Features

* Add circuit breaker to code completion ([2351f4f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2351f4f0f343423efffa5670db728f10bc8ee149))
* Add Code Suggestion Telemetry ([3134597](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/31345978e4a20fc2939dcba5c9196db4319b6bcd))



# [3.65.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.64.0...v3.65.0) (2023-06-02)


### Features

* code suggestions use the new JWT authentication flow ([98b9aaa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/98b9aaa3309cd41db8bf126b00145efb2deb8027))

### Refactoring

* [refactor: Rename `noRepository` state to `openRepositoryCount`](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/798)
  * Implemented by [Anatoli Babenia](https://gitlab.com/abitrolly) 🎉🔥



# [3.64.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.63.0...v3.64.0) (2023-06-01)


### Bug Fixes

* remove all mentions of the old issue/MR URL format ([a53c169](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a53c169d01eb2e66671716ff9a575a7c0a491fec))


### Features

* debug log all http fetches ([dfc369d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dfc369d81bb22a5bdddd0ae6dd3ce4e540dc88e2))



# [3.63.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.62.0...v3.63.0) (2023-05-19)


### Bug Fixes

* create issue and MR commands are broken thanks to deprecated URL ([47c2c80](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/47c2c80a47f77c62c751dfca74ca53e5aa5a5db2))
* reorder pipelines to fix GitLab ordering issue ([cb3988a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cb3988aea1f384819599752dcc1afaee6e1d8798))


### Features

* add context menu to open issue/mr in browser ([14e8012](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/14e801235329a186ad19fa87cf61e4577a995854))
  * Implemented by [@busybox11](https://gitlab.com/busybox11) with [MR !782](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/782) 👍



# [3.62.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.61.0...v3.62.0) (2023-04-28)


### Features

* add context menu to open issue/mr in browser ([eb21b46](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/eb21b46cb65ff645bff70de53ad4069b1171c0ff))
* Ai Assisted Code Suggestions: Prompt Collection V1 ([9d3886e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9d3886ef4c3707183ba6ed710af184371e3f2728))



# [3.61.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.60.0...v3.61.0) (2023-04-11)


### Bug Fixes

* Retrieve active project for custom text editors ([3230bde](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3230bde31bc9eabce1b52c846e77e9574948ca6b))
  * Fixed by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !742](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/742) 👍


### Features

* add scope and search level to advance search prompt ([d64984b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d64984b939f595ee4d7d81ae96e2b108de89f15b))
  * Implemented by [Paul Marshall](https://gitlab.com/shnaru) with [MR !749](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/749) 👍
* clicking ambiguous project item lets user select a project ([8313ba4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8313ba4ae4ae65bf3a7bf345b7b1b3ac53d207ce))
* refreshing current branch info works when webviews are open ([112958c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/112958c1cdc20e4e707ba43e54c95f8a826aa182))
  * Fixed by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !745](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/745) 👍
* use permalinks in Copy Link to Active File command ([4e6f9be](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4e6f9bee23870f9e26ed3e2ed0a5ec67fedb0034))



# [3.60.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.59.2...v3.60.0) (2023-02-20)


### Bug Fixes

* Don't use NODE_ENV for selecting webview ([e04abce](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e04abce24ec94278240d0d56e6441f8906360ad5))
  * Fixed by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !727](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/727) 👍
* Properly handle SSH URLs with custom ports ([23e851d9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/23e851d9ac836bb2bca455d541c29762bccbb37d))
  * Fixed by [Johannes May](https://gitlab.com/johannesmay) with [MR !736](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/736) 👍


### Features

* Change Compare command to use default branch ([179aa19](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/179aa19afb0b2508e9daf8701954a40d73403d2e))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !723](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/723) 👍
* Display message when job is erased ([7c69a84](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7c69a849c0ba7736cd8edfeed952575c7371ccb3))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !725](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/725) 👍



## [3.59.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.59.1...v3.59.2) (2023-01-19)


### Bug Fixes

* Exclude pendingjob.html in vscodeignore ([456c203](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/456c20359565af4d821c647596fb53a8b6351b3e))
  * Fixed by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !718](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/718) 👍



## [3.59.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.59.0...v3.59.1) (2023-01-18)


### Bug Fixes

* remove SVG badges from README to fix publishing ([82e2248](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/82e2248e53391dd2f5336c17ed8694a476945abc))



# [3.59.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.58.0...v3.59.0) (2023-01-18)


### Features

* View Pending CI jobs ([0f2ab11](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0f2ab11562ad42a938710472d09087e070676566))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !705](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/705) 👍



# [3.58.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.57.3...v3.58.0) (2023-01-12)


### Features

* Allow custom query reviewer Any and None ([1319283](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/13192830c28bf8da647326ea7126a1820b2d93e9))
  * Fixed by [Raul Reyes](https://gitlab.com/mk/raul-reclique) with [MR !713](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/713) 👍

### Refactoring

* [refactor: Add EventEmitter to CurrentBranchRefresher](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/703)
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) 🎉🔥



## [3.57.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.57.2...v3.57.3) (2022-12-13)


### Bug Fixes

* Allow AI Assist server url to be empty ([95d292b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/95d292b91a7c36cac23f44bd75385673540137f9))
* don't override OAuth token with an invalid response ([a2528ee](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a2528eec15ee93474ce1eefcdbf20a9fa65606d0))



## [3.57.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.57.1-fix...v3.57.2) (2022-12-01)

* Small documentation updates and updated URL for GitLab code completion.

## [3.57.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.56.0...v3.57.1) (2022-11-17)


### Bug Fixes

* Fetch all jobs in the pipeline instead of just first page ([1becad8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1becad88a98ce8023f1d1ed62e2b9fcc6c09688f))
  * Fixed by [Mikhail Kuryshev](https://gitlab.com/mk9) with [MR !680](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/680) 👍


# [3.57.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.56.0...v3.57.0) (2022-11-15)


### Features

**All features in this release have been implemented by [Lennard Sprong](https://gitlab.com/X_Sheep)** 🚀. Thank you once again for making the extension better 🙇

* Display trace for running Jobs ([c5633b1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c5633b1f3ff8fad7399c44bcad53a0cf893182f1)) [MR !674](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/674)



# [3.56.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.55.0...v3.56.0) (2022-11-08)


### Bug Fixes

* Do not log.debug all account props ([498a8d1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/498a8d117125a992b8c2bffc81745765e66d1e00))


### Features

* ai assist stop sequences ([2152712](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/215271243c81c9bd2df790b6c4fa054ce6774ef0))


### Performance Improvements

* Reduce number of calls AI assist makes ([e474dc7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e474dc78cb9a4023c5ec296605bb8dedd13805d4))



## [3.55.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.55.0...v3.55.1) (2022-11-08)


### Bug Fixes

* Do not log.debug all account props ([916961a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/916961a905e1cfb0f6fabaa83a6d366c57aa6814))



# [3.55.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.54.0...v3.55.0) (2022-10-31)


### Features

* Add authentication for AI Assist ([3b5a9fe](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3b5a9feabf9168336a74691359f5e4303d602a7d))
* open changed MR file using a context menu in the TreeView ([39937c5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/39937c53aaca39f1371a6a1e7db438e7628359fa))



# [3.54.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.53.0...v3.54.0) (2022-10-12)


### Features

**All features in this release have been implemented by [Lennard Sprong](https://gitlab.com/X_Sheep)** 🚀. Thank you once again for making the extension better 🙇

* Display external status in pipeline tree ([1278c37](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1278c37196bd48874ca92e5885b3c52c85e67120)) [MR !671](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/671)
* display logs for finished CI jobs ([0c7dcb2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0c7dcb2a4ffe782781fb8284061e4ee113a770d9)) [MR !661](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/661)



# [3.53.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.52.0...v3.53.0) (2022-10-10)


### Features

* Add support for AI-assisted code completion (alpha) ([446cc63](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/446cc63a6034c0d6ef3c9b970015b4be40d64e6e))



# [3.52.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.51.0...v3.52.0) (2022-09-23)


### Bug Fixes

* mention GitLab: Remove Account command in docs and error messages ([382dd76](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/382dd76de21bf6fc494ca60f38244edf1b794588))


### Features

* Allow disabling Status bar items through VS Code UI ([542eac7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/542eac7709b3fd7b7b5e8b89519abbb4872bb64d))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !649](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/649) 👍
* YAML Completion with variable names in braces ([1e41b29](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1e41b2908f1d24afc8ad00b4b0cc745270d7ee3d))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !650](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/650) 👍



# [3.51.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.50.0...v3.51.0) (2022-09-15)


### Features

* Allow retrieving pipelines for tags ([4cdfcc5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4cdfcc5540481dd2ecf42ac7a6fff1d5389cf073))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !644](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/644) 👍



# [3.50.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.49.0...v3.50.0) (2022-09-09)


### Bug Fixes

* use project id from the project in repository ([63dbf50](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/63dbf50717ff5b4e25d4e06a0335ec2c30549c7b))


### Features

**All features in this release have been implemented by [Lennard Sprong](https://gitlab.com/X_Sheep)** 🚀. Thank you so much for making the extension better 🙇

* Add context menu buttons for retrying/cancelling Job ([2134f78](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2134f78b9bd640e3efa8e9ce13e710a826a6853c)) [MR !633](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/633)
* Add pipeline menu action for downloading artifacts ([f4d027c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f4d027c616c884bef9fc42e5f20dfac43b811134)) [MR !635](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/635)
* Add retry/cancel pipeline to context menu ([c2caee4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c2caee40cfcbfb5d13cc790f9a2d1cfcf6c6a7ab)) [MR !637](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/637)
* Display merged CI YAML ([3c3a67a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3c3a67ab2ecc0c5270aba5e515919b78f15f2ce5)) [MR !626](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/626)



# [3.49.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.48.1...v3.49.0) (2022-08-30)


### Bug Fixes

* Show proper error message when add token to existing account fails ([c6a3b8b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c6a3b8bce38c9df7e65dc45114e9f7d23f2261af))
  * Implemented by [Chris Qiang](https://gitlab.com/chez14) with [MR !623](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/623) 👍


### Features

* Add Download Artifacts context button ([b06a1d9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b06a1d9fbf2cbc2eb93a541a756cf6c3cc8c316d))
  * Implemented by [Lennard Sprong](https://gitlab.com/X_Sheep) with [MR !625](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/625) 👍



## [3.48.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.48.0...v3.48.1) (2022-08-12)


### Bug Fixes

* downgrade VS Code for integration tests ([9b214c9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9b214c905538493539ae2ad955d3e78e245564f1))
* handle ssh urls with custom ports ([310dcc8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/310dcc8ff687695fae11160e69b1407981dc14b0))
  * Implemented by [Adam Groves](https://gitlab.com/addywaddy) with [MR !616](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/616) 👍
* hotfix for vulnerabilities not conforming to the RestIssuable ([c728e10](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c728e10492b37a2d7e573efbb4c9768cab1b7b35))



# [3.48.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.47.2...v3.48.0) (2022-07-28)


### Features

* Add Yaml file suggestion message ([b813d7e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b813d7eda7f8a38b0a75c6888567e31560dbd66f))
  * Thanks to [Tuna Ozkoc](https://gitlab.com/TunaOzk) for initial implementation [MR !466](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/466)
* minimal version check ([ff0c05b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ff0c05b8a74a74acb8e6c8437c9e9f90294b3135))



## [3.47.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.47.1...v3.47.2) (2022-06-22)


### Bug Fixes

* don't fetch closing issue if it's missing iid ([5e846c3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5e846c3a23fc64bec7a5e53c914edc9fe60d26f0))



## [3.47.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.47.0...v3.47.1) (2022-06-09)


### Bug Fixes

* indicate that extension is waiting for OAuth redirect ([32e1cd7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/32e1cd78abf936185c1ee0dc3fa2109da54badd9))



# [3.47.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.46.0...v3.47.0) (2022-06-08)


### Features

* OAuth authorization welcome screen ([e1f1f6a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e1f1f6a15c7c63edd8c363ceb8b0f1eaf811bf1f))



# [3.46.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.45.0...v3.46.0) (2022-06-06)


### Bug Fixes

* update extension description to official ([9d0f314](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9d0f314a045bc8023b4fd52d89f47c976a4e7a5b))


### Features

* update extension banner color ([6d068b1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6d068b1a4ea95068006684b66e00c1bf797fe940))



# [3.45.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.44.2...v3.45.0) (2022-06-06)


### Bug Fixes

* improve UX for removing accounts where there is no account ([f0fef4d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f0fef4dba615a232dd60ac278dd8c98ea44c94f4))
* update extension icon ([fb5f20c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fb5f20c85b0e3ee6585b15560d673597e40b7bd4))
  * Implemented by [George Tsiolis](https://gitlab.com/gtsiolis) with [MR !570](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/570) 👍
* update extension marketplace icon ([0755ff6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0755ff6065721ff7524cffbc4404cbee0319d7d4))


### Features

* introduce debug mode ([2e0137f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2e0137f04e58a7028a53b7b2d5d2791718eb930a))
* OAuth authentication to GitLab.com ([e140b2d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e140b2d6d333454dfba562d88bf1b697079b89b8))
* rename "Set GitLab Personal Access Token" command to "Add Account" ([c94c5fe](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c94c5fe7385161350156a5096867b772999943f2))



## [3.44.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.44.1...v3.44.2) (2022-05-25)


### Bug Fixes

* explain why creating a comment on a large diff fails ([d7a8c46](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d7a8c463d37b10cb0db02a338d5ec63e58eca0db))
* warn user about OS Keychain issue on Ubuntu ([066d115](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/066d1153c3bf0e8cd8bcacc4f7d6659994a5b82b))



## [3.44.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.44.0...v3.44.1) (2022-05-13)


### Bug Fixes

* accounts can be removed even when they are missing token ([7fbf8d9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7fbf8d95a492eb5286f2e24c48676c1c4b485f93))
* remove tokens from secret storage when we remove account ([291e6da](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/291e6dad1b3a172f1a9196d6f2b8ebff5f66c8bb))



# [3.44.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.43.1...v3.44.0) (2022-05-13)

In this release we redesigned account management. Now it's possible to have multiple accounts (e.g. work and personal) on the same GitLab instance.

### Bug Fixes

* render markdown in MR comments ([9e249c7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9e249c7729cfd89150a4e493a0114d13b5bc2c2b))


### Features

* support multiple accounts on the same GitLab instance ([bb469bf](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bb469bfdf51b92339d20f3c2331316ff1d69a46b))
* Updated code completion to include *.gitlab-ci.yml ([b8e3551](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b8e3551efe8ca0be10934dcd99c2dea848671dbe))
  * Implemented by [Zack Knight](https://gitlab.com/zachkknowbe4) with [MR !549](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/549) 👍
* use VS Code SecretStorage to store tokens ([01cfc88](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/01cfc889ff8f4c22ccd40d631796066d3bd03e5c))



## [3.43.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.43.0...v3.43.1) (2022-05-03)


### Bug Fixes

* avoid "GitExtensionWrapper is missing repository" error ([537ed11](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/537ed11fd742ac9923b05fe4075848bd3ac956ca))



# [3.43.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.42.2...v3.43.0) (2022-05-03)

This release contains a [larger refactor of the extension internal state](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/558). This refactor closes 9 outstanding issues:

- [Detect GitLab instance from git remote](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/34)
- [Smarter multiple instances management](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/116)
- [Consistent handling of remotes, instances and branches](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/260)
- [Setting non-existing gitlab.remoteName causes git remote parsing error](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/394)
- [Assertion error if the local repository has a remote pointing to a local path](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/418)
- [Remote name will be used for every sub project](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/448)
- [Support instanceUrl at the workspace folder level](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/480)
- [not compatible with git remote using ssh config](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/537)
- [gitlab.repositories setting (used for preferred remote) can't handle relative path](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/546)

The following settings are no longer used:

- `gitlab.instanceUrl` - The extension automatically matches your GitLab token instance URL with the Git remote (based on host). If this matching fails, right-click the repository item in the GitLab Workflow TreeView and manually assign a GitLab repository.
- `gitlab.repositories.preferredRemote` - if you've got multiple GitLab projects for the same repository (e.g. fork and upstream), right-click the repository item in the GitLab Workflow TreeView and select which project should be used.

### Bug Fixes

* few minor issues with issuable search ([24253c1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/24253c140221b698a3d74e98e056871109215967))


### Features

* project-centric extension internal model ([d1c97a1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d1c97a17f2ae262af375523ef11d273c5f05ab90))



## [3.42.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.42.1...v3.42.2) (2022-04-20)


### Bug Fixes

* can't access issue detail from closing issue ([5fdaffa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5fdaffa03cc90aecc409acc2c6357a56335a4b6d))
* MR /merge quick action ([b5d55b5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b5d55b5f180c67c5abe32dbe152a50e0f49188e5))



## [3.42.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.42.0...v3.42.1) (2022-04-12)


### Bug Fixes

* include response status and body in every fetch error ([c19a56e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c19a56e35bcc99584c941aa6996d3db6677d6cdd))
* support branches with hash symbol in their name ([58cfecc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/58cfecc621222827fdf98f402f2d5a7b66b7778b))



# [3.42.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.41.2...v3.42.0) (2022-04-01)


### Features

* validate token right after user added it ([bcea7aa](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bcea7aa734da5442dd151f9fe301bfea3b420d88))



## [3.41.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.41.1...v3.41.2) (2022-03-14)


### Bug Fixes

* getting MR discussions can only work on GitLab 13.9.0 or later ([79cad6a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/79cad6af5d439ffc477bbe95c70a3f0df76a8ec7))



## [3.41.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.41.0...v3.41.1) (2022-03-09)


### Bug Fixes

* comment out Front Matter from README.md ([13bac39](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/13bac3934af389583de210639402fc64843d0a76))



# [3.41.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.40.2...v3.41.0) (2022-03-09)


### Features

* support <current_user> in more "user" filters ([e73d7d6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e73d7d6b2f020a5343308e293dbb88fd86183942))
  * Implemented by [Mathieu Rochette](https://gitlab.com/mathroc) with [MR !441](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/441) 👍
* validate GitLab instanceUrl setting ([d3e740f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d3e740f49d90a885f29f483d213db0924a31e442))
* validate instance URL for new token ([54ed3e1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/54ed3e1331044039676d2f0233392f5bf3f181a8))



## [3.40.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.40.1...v3.40.2) (2022-01-18)


### Bug Fixes

* fetch all pages from API ([d7da635](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d7da63560fb8aac7db48161c6b7ec6934e0cf0f5))
* incorrect branch encoding ([9e394ec](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9e394ec44c9069d540a6bec1af9c3c1794598e92))



## [3.40.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.40.0...v3.40.1) (2022-01-06)

- Improved README (https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/436, https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/434)
- Reduced extension size and startup time (https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/428)


# [3.40.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.39.0...v3.40.0) (2021-12-14)


### Bug Fixes

* manual job has unknown status in sidebar tree ([fd44ec9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fd44ec99295411cffd09a671536fceba130d4511))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !415](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/415) 👍


### Features

* render suggestions in MR reviews ([3178746](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/31787465c3e2659e4b56b3c80ddf46b69b8209b4))
* render suggestions in MR webview ([beeefcf](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/beeefcf1255df3ac5df854bcf2b9431919ce5c5e))



# [3.39.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.38.2...v3.39.0) (2021-12-07)


### Bug Fixes

* extension ignores expired token and fails in the wrong place ([4661365](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4661365ada85c7b0af49fd5fb9ec205ff73498ea))
* show closing issue status bar item ([ef16e08](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ef16e08b8f6bd5bd6b941902384c3363d6a4eb6d))


### Features

* introduce log level to logging ([c40ab03](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c40ab038bc0b98e423b184ac74652010fac29d8a))
* open status bar MR link in webview ([56415fb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/56415fb6502dcfe3a53f252e2329eb5361e0def9))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !416](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/416) 👍



## [3.38.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.38.1...v3.38.2) (2021-12-01)


### Bug Fixes

* remove pipeline ID from custom query parameters ([1fe2e96](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1fe2e9685d72c2937e386ecf3db13bb49628bd6a))
* remove support for GitLab 10 and lower ([adef152](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/adef1525946ca5ad4f301c620ebecdc65a10f7ad))
* validating CI conig fails when there are multiple remtoes ([1bbac0d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1bbac0d0a34c034e91fbdcddd0e0ab9f7d07ca0d))



## [3.38.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.38.0...v3.38.1) (2021-11-22)


### Bug Fixes

* make Vue template rendering safer ([086dfbe](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/086dfbe24079b1b2aa80981b6daf2c6d2286263b))



# [3.38.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.37.0...v3.38.0) (2021-11-17)


### Bug Fixes

* rename Succeeded CI job status to Passed ([28c4864](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/28c4864b3c2ca7a221ba6f242714aa4d8a4c434b))
  * Implemented by [Justin Mai](https://gitlab.com/Justin.Mai) with [MR !361](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/361) 👍


### Performance Improvements

* reduce packaged extension size ([10334ac](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/10334ac57721431bc39dc07c9322f68b4ae9ee6f))
  * Big thanks to [Ethan Reesor](https://gitlab.com/firelizzard) who designed the original implementation in [Draft: Bundle with esbuild](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/334). He also helped with measuring performance and consulting the final implementation in [perf: reduce packaged extension size](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/368) 👍



# [3.37.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.36.1...v3.37.0) (2021-11-11)


### Features

* add 'view as tree' option ([#407](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/407)) ([dc11640](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/dc116408dbe67759091ce2fc8c1a24af0bd5d81c))
  * Implemented by [Liming Jin](https://gitlab.com/jinliming2) with [MR !346](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/346) 👍



## [3.36.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.36.0...v3.36.1) (2021-11-08)

* no extension changes, only upgrading release tooling

# [3.36.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.35.0...v3.36.0) (2021-11-08)


### Bug Fixes

* retry loading failed project ([15bb715](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/15bb7156d2bd16e1ea4c4c0bff07e859b1592417))


### Features

* use GitLab credentials from environment variables ([9f22adc](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9f22adc5dcd40f1317a92d2177d74242bfca8f95))



# [3.35.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.34.0...v3.35.0) (2021-11-02)


### Bug Fixes

* delayed job has unknown status in sidebar tree ([875a9c1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/875a9c1a83a35d1c3b13a56c20cba8ff686e6ea1))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !367](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/367) 👍
* images not working in MR/Issue comments ([16d03ff](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/16d03ff863c7962948c6bc534b743fa4748134e7))
* show user an error when project can't be found ([c6c7307](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c6c7307c0eac9f22e8d84d96e71a0704bda95618))


### Features

* change tree view to list repositories first ([3e26dad](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3e26dadf044a5ed9a85ebd4549a88981487c0c9c))



# [3.34.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.33.1...v3.34.0) (2021-10-26)


### Bug Fixes

* replace only fixed-size strings in rendered HTML ([c8f1116](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c8f11166578c1fa6f3476fa6dbc97a0e85ae4eb0))


### Features

* support multiple remotes ([f45c3ac](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f45c3acff78e74c70fcc981e7613e9e9e7694dce))



## [3.33.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.33.0...v3.33.1) (2021-10-19)


### Bug Fixes

* draft comments disappear after refresh ([b7553b8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b7553b8e6706f452265fc166c85eac6629a7c06e))



# [3.33.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.32.0...v3.33.0) (2021-10-08)


### Bug Fixes

* open repo on Windows ([83435cf](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/83435cf326815baa7c02acf46db65914360a7e29))
  * Implemented by [@firelizzard](https://gitlab.com/firelizzard) with [MR !354](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/354) 👍


### Features

* enable esModuleInterop ([ef702c7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ef702c7bcf9d811a7006af99ee7254f53e293e96))
  * Implemented by [@firelizzard](https://gitlab.com/firelizzard) with [MR !353](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/353) 👍
* refresh branch info when window gets focused or branch changed ([69096ce](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/69096ce702e02792504beb3b1d9111b8e1704e5c))



# [3.32.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.31.0...v3.32.0) (2021-10-06)


### Features

* add project/ref picker to open repo command ([5f84c2b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5f84c2bf7f229a16a3833c1806952d5b390fc5a8))
  * Implemented by [@firelizzard](https://gitlab.com/firelizzard) with [MR !338](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/338) 👍
* refresh MR only if it the refresh is user initiated ([428b28e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/428b28e7779f928fa5d112a186be94df45b5f74f))
* refresh tree view and status bar together ([e5da54a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e5da54a6a922f703739315a2b2df1a8543c8febf))



# [3.31.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.30.0...v3.31.0) (2021-09-22)


### Bug Fixes

* **remote fs:** tell user when token is invalid ([25489c2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/25489c2e7a9296a1ee906d0976cd002c0f0cd126))
  * Implemented by [@firelizzard](https://gitlab.com/firelizzard) with [MR !337](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/337) 👍


### Features

* disable ci validation and MR discussions for old GitLab versions ([1252c1b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1252c1bf5851b5c79286fe2188bff4a73835b3fd))
* remove the minimum version check and update readme ([0da2ba8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0da2ba81be56f8d987c9c53f76870cdc0e5ca2aa))
* use GraphQL to get snippet content ([b2090ab](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b2090ab4df3675418caba86cd550cb1eb61561d1))



# [3.30.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.29.1...v3.30.0) (2021-09-10)


### Features

* show markdown help for missing token ([e31aedd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e31aedd5225ed307eac95575c0a4c88f5053f160))
  * Implemented by [@firelizzard](https://gitlab.com/firelizzard) with [MR !333](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/333) 👍



## [3.29.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.29.0...v3.29.1) (2021-08-26)


### Bug Fixes

* enable extension for virtual workspaces ([aee6529](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/aee6529cfb46586ccb359a2d0d336de1f01b2ce6))



# [3.29.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.28.2...v3.29.0) (2021-08-26)


### Features

* remote repository filesystem provider ([4476be5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4476be5df94e6ce977480614a0938ee7aaad35cb))
  * Implemented by [@firelizzard](https://gitlab.com/firelizzard) with [MR !321](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/321) 👍



## [3.28.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.28.1...v3.28.2) (2021-08-18)


### Bug Fixes

* Merge request detail doesn't show for a large MR ([b0488d5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b0488d521144f68e1bac1c40108fd8f2149bbc16))
  * Implemented by [@PeterW-LWL](https://gitlab.com/PeterW-LWL) with [MR !329](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/329) 👍



## [3.28.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.28.0...v3.28.1) (2021-08-12)


### Bug Fixes

* ci stages not correctly sorted ([7b0c4fb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7b0c4fb8d7764a4f9bc51ee6ea73a18566df0a38))
* matching instance URL with token is too strict ([9be7eb4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9be7eb4566adfec9a07b3800dde48079b6f84c06))



# [3.28.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.27.1...v3.28.0) (2021-08-11)


### Bug Fixes

* **gitRemoteParser:** allow self hosted git remote with ssh on custom port ([23f73b6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/23f73b63ddcbd0968111795f5c8d93df27986059))
  * Implemented by [@PeterW-LWL](https://gitlab.com/PeterW-LWL) with [MR !319](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/319) 👍


### Features

* open local file during MR review ([0e05d42](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0e05d42e10c91e9f72607b419160b15d740ca4d2))



## [3.27.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.27.0...v3.27.1) (2021-08-02)


### Bug Fixes

* use namespace CI lint endpoint to handle includes ([b21d5ba](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b21d5baac35356295596d8a87316d571a7fb6c7e))
* web URL for file contains backwards slashes on windows ([118fc32](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/118fc322555db4944466d6ce4321c463f6016712))



# [3.27.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.26.0...v3.27.0) (2021-07-28)


### Bug Fixes

* error 400 when on a branch with special chars ([2645e0e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2645e0e85cf5689f0fab6c5ac1fc12bd65289d08))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !218](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/218) 👍


### Features

* improve UX when extension fails to create new comment ([4b3acbf](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4b3acbfb50e64c6884dd8ca8940838c41560ae07))
* show CI pipelines and jobs ([bba4609](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bba46099b6bb8aeabe2f76fb448a2aaf117669d9))


### Community contributions 👑 (not user-facing)

* Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull)
  * [chore(ci variables): update the ci\_variables.json](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/317)
  * [ci: run check-ci-variables job only on default branch](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/318)

# [3.26.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.25.0...v3.26.0) (2021-07-13)


### Features

* apply snippet patch ([2cc8a54](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2cc8a541665d1c9befa7ec0e9e5f24abcec7be00))

### Documentation

* **welcome:** Prefill token name and scopes on welcome screen ([4b9aa6c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/commit/4b9aa6c58a9f84a4f998ff86bf492b0df09bd52f))
  * Implemented by [@espadav8](https://gitlab.com/espadav8) with [MR !305](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/305) 👍


# [3.25.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.24.0...v3.25.0) (2021-07-08)


### Bug Fixes

* api calls fail when instance is on custom path ([0b487a6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0b487a62b76d160a95703080a89aea94694d6e3d))
  * Implemented by [@malinke](https://gitlab.com/malinke) with [MR !303](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/303) 👍
* inserting snippets not working for newly created snippets ([efaf1b7](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/efaf1b74acf42a6ab80a5f2a1d96e46da34722a0))


### Features

* create snippet patch ([750bae4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/750bae4b2b8616bdf424a96f248ee51439351a1a))
* **gitclone:** add wiki repo clone support for git clone command ([621c396](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/621c3968083a7626436bed5be83613c3a409d33f))
  * Implemented by [@tonka3000](https://gitlab.com/tonka3000) with [MR !292](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/292) 👍



# [3.24.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.23.3...v3.24.0) (2021-06-30)


### Features

* indicate which changed files have MR discussions ([47f244b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/47f244bc2252b9faacc31d1007d4c1e1d65c0e9d))
* **view issues-and-mrs:** checkout local branch for merge request ([174a955](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/174a95575ca85e9db054c3ddfbf882c755cc309a))
  * Big thanks to [@Musisimaru](https://gitlab.com/Musisimaru) who designed the implementation in [MR !229](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/229) 👍



## [3.23.3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.23.2...v3.23.3) (2021-06-22)


### Bug Fixes

* pipeline actions not working ([363ea1d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/363ea1dfaffc71488ec4736d7577843bd96897fb))



## [3.23.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.23.1...v3.23.2) (2021-06-17)


### Bug Fixes

* minimum version check ([a937eb3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a937eb3221b9537dca763507a07d08dd1af9b0fc))
* prevent duplicate comments and comment controllers ([bf0773e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bf0773e78f9dd337d1acdcd2225d815bf61e75c6))



## [3.23.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.23.0...v3.23.1) (2021-06-16)


### Bug Fixes

* temporarily disable version warning ([3252b73](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3252b739b31a89cbdac14998b20b12f0a2a678cc))



# [3.23.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.22.1...v3.23.0) (2021-06-16)


### Bug Fixes

* **readme:** correct link to PAT settings ([f86a61c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f86a61cbe18464fe13be3bc74ba533661850a2f4))
  * Implemented by [@Rexogamer](https://gitlab.com/Rexogamer) with [MR !278](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/278) 👍
* **welcome screen:** update link to personal access token settings ([e59b91d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e59b91dd237bd847b9dd1a38be40ab82ae2d2081))


### Features

* warn users about out of date GitLab version ([0337ad0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0337ad0e5dd2ee04626748d5dbd871e2c41c089d))



## [3.22.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.22.0...v3.22.1) (2021-06-10)


### Bug Fixes

* each overview tab gets opened only once ([b4f7b1c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b4f7b1c51d9b085762c7382b1ba7e704bfdd87e6))
* limit commenting only to GitLab MRs ([40d2f11](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/40d2f111a9f20f9100535a9d625ae092c39f78cf))



# [3.22.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.21.0...v3.22.0) (2021-06-08)


### Bug Fixes

*  comment controller can be disposed regardless of API failures ([28d322c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/28d322c6d693359e72a3089cd6b2932f5acb336f))
* validate CI command didn't show validation result ([21080d6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/21080d6c447c25ccd1a5f36720f93ec9766e7d03))


### Features

* **editor:** extend autocomplete glob pattern ([aa41067](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/aa41067666df5119ea8cd70669a35d68b04b3d7d))
  * Implemented by [@IAmMoen](https://gitlab.com/IAmMoen) with [MR !270](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/270) 👍

# [3.21.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.20.1...v3.21.0) (2021-06-04)


### Bug Fixes

* remove the broken code related to creating user snippets ([bb2b8a0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bb2b8a01af81ec66f6f6b76989e13020a119cab0))


### Features

* create new MR diff comments ([f4e6e86](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f4e6e8692865e3a6b9207eb6c7d615fbbf6fa235))



## [3.20.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.20.0...v3.20.1) (2021-05-19)


### Bug Fixes

* generating file link on windows uses backslash ([78f44f2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/78f44f238dc103e2565bb496011bb8da73afd2f2))



# [3.20.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.19.0...v3.20.0) (2021-05-06)


### Bug Fixes

* limit command availability ([f6b5607](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f6b5607d5ee9435fb729b97e20b05404e7e4bba1))
* **status bar:** status bar items couldn't open MRs and issues ([f41977e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f41977ece56cb288f4310c09d267e59b36587875))
* doesn't react to enabling git extension after it was disabled ([a999cc4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a999cc4c6edaaeccb803dfb395f0f3f6e5f5f4aa))


### Features

* **side panel:** use git repositories to look for GitLab projects ([3ee0a69](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/3ee0a696d1eb6e9ddcc782bc81945fd7e1956049))
* **status bar:** use repositories instead of workspaces ([bb9fed9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bb9fed950bb48a5518164166bb3da2c36e6a6723))

### Community contributions 👑 (not user-facing)

* Implemented by [@tnir](https://gitlab.com/tnir)
    * [Replace node-sass with sass](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/240)
    * [ci(eslint): update eslint from 6.8.0 to 7.25.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/241)
    * [ci(eslint): update @typescript-eslint from 3.10.1 to 4.22.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/242)

# [3.19.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.18.0...v3.19.0) (2021-04-30)


### Bug Fixes

* stop falsely logging that git extension isn't working ([b6cd7e6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b6cd7e6415d9eeae37e633e0970bc7f908431727))


### Features

* add commenting ranges for new file versions in diff ([6c22d3a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6c22d3a74300fbea98ab31a5e73c337acfb38583))
* show welcome view when there is no git repository ([ce9af7e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ce9af7e59b0b11cfb9af79b82460c43c2f1dcb60))

### Community contributions 👑 (not user-facing)

* Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull)
    * [Fix CI variables update script compares order of items](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/230)
    * [refactor: reduce eslint warnings](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/217)
    * [docs: update outdated sign up link](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/237)
    * [chore: update CI variables](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/238)
    * [docs: add notice to enable fork repo mirroring](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/236)
* [ci: add junit reports](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/183) implemented by [@haasef](https://gitlab.com/haasef)

# [3.18.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.17.1...v3.18.0) (2021-04-14)


### Bug Fixes

* **status bar:** hide all status items when there is no GitLab project ([6a5537e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6a5537ee9ac61abdd9b39e5d0944c282244c339d)), closes [#71](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/71)
* use project_id from the pipeline instead of the workspace project ([7b6f1ba](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7b6f1babd097ad994f08aceda6380b8cd805bddd))
* when fetching pipeline jobs fails, only log error, no notification ([fb75deb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fb75debbfce0f4a3e1f598b7dae5d401287bbd10))


### Features

* add "Merge requests I'm reviewing" custom query ([740c37d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/740c37dc2370331811d2f62ee53965cc1ef121e7))
* only poll for new status bar information in focused window ([105afe9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/105afe9055377a579f99a162e9a8eb296c49838d))



## [3.17.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.17.0...v3.17.1) (2021-04-12)


### Bug Fixes

* ci variables links are broken ([040a881](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/040a881f0bd017db7147a164070ba4f681c9b1b4))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !215](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/215) 👍


# [3.17.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.16.0...v3.17.0) (2021-04-08)


### Features

* **mr review:** respond to an MR diff thread ([3182937](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/31829375987c55e1935d15d7a4b692365f4bc607))
* **mr review:** show change type for each changed file ([b9f5e12](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b9f5e120b7200b163a8e03a2490a60afe78058f0))



# [3.16.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.15.1...v3.16.0) (2021-04-07)


### Bug Fixes

* **instanceurl:** subpath in self-managed GitLab is not used [#319](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/319) ([7b0cba0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7b0cba0358a31e61776acc55aef08e75b418c7c5))
  * Implemented by [@amohoban](https://gitlab.com/amohoban) with [MR !206](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/206) 👍
* elliptic and y18n have vulnerabilities ([ba067e1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ba067e1b73b8a065a5fd82d9aa54303bebe14d9b))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !214](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/214) 👍


### Features

* rename 'Description' to 'Overview' in MR items ([ca1ad6e](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/ca1ad6e0fc4b606b90f150a370d1a3b8dee5c42c))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !219](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/219) 👍
* **sidebar:** show welcome view if there are no tokens set ([a0fbaee](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a0fbaee10780002f34dfe40200bd690fd02433a5))



## [3.15.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.15.0...v3.15.1) (2021-03-30)


### Security

* [CVE-2021-22195](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-22195) use the same git binary as VS Code ([0fe4c5f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0fe4c5fbcc947dee938635ca2a92a7d2deb6549b))



# [3.15.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.14.2...v3.15.0) (2021-03-17)


### Features

* **mr review:** editing comments on MR diffs ([fb7275a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fb7275a22eaf6dc71d2c30726b0f755a204b9586))



## [3.14.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.14.1...v3.14.2) (2021-03-15)

* no additional features or fixes, we only fixed the release pipeline ([MR !202](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/202))

## [3.14.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.14.0...v3.14.1) (2021-03-11)


### Bug Fixes

* workspace in project subfolder breaks Open active file on GitLab ([78372e8](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/78372e8b0e78bff8ee3450496452aeeb9592644a))
  * Implemented by [@GrantASL19](https://gitlab.com/GrantASL19) with [MR !185](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/185) 👍



# [3.14.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.13.0...v3.14.0) (2021-03-08)


### Features

* **git:** implement git clone command ([eeedd25](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/eeedd25bffae50e5f60151753cfbcf5b95a50d84)), closes [#222](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/222)
  * Implemented by [@haasef](https://gitlab.com/haasef) with [MR !172](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/172) 👍
* **mr review:** deleting comments on MR diff ([d1d7446](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d1d744624080dea35d6a5d61b28239aafb67747a))
* **mr review:** display whether discussion is resolved or not ([89da179](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/89da17934ebeb560bf494b35c297a9cccc65a260))
* **mr review:** resolving and unresolving discussions ([c7edee6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/c7edee63f30d5d3ac1b637990ba5c0fcb6f61558))



# [3.13.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.12.1...v3.13.0) (2021-02-19)


### Features

* support detached pipelines ([4da4cba](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4da4cba24f9e8602b35def50041dd39eeb88cca2))


### Performance Improvements

* **pipeline status:** remove unnecessary API call for single pipeline ([0c55ab4](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0c55ab427740d67e1a4987b26e791f495e01939b))



## [3.12.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.12.0...v3.12.1) (2021-02-15)


### Bug Fixes

* support displaying users without avatars ([8e42065](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8e42065f135a02d2ced13be27d6a0bc730deafb0))



# [3.12.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.11.2...v3.12.0) (2021-02-10)


### Bug Fixes

* **side tree:** for current branch not working for multiroot projects ([4c5989a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4c5989a20a80513673b90116f6591f040bb25138))
* **sidebar:** log error when fetching items ([2f95666](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2f956665301cbb5cc98663245afcb31c79f3559d))


### Features

* try to get MR diff conent from local git before fetching from API ([b3c5f54](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b3c5f541e2cfd52277c500b27e915b1507279d96))



## [3.11.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.11.1...v3.11.2) (2021-01-29)


### Bug Fixes

* **gitlab-service:** do not fail if project could not be found ([a5a4211](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a5a421141e960e299167dad14587551e11f7f504))
  * Implemented by [@vymarkov](https://gitlab.com/vymarkov) with [MR !130](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/130) 👍
* some self-managed GitLab deployments not handling project URLs ([5c4e613](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5c4e61388a5701d1e7faadc62ca5c6a13b7b0e7e))
* **gitlab_service:** include request URL when logging error ([9d0c8be](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/9d0c8be3dcf04d08891ad9b8f900e45cf2716722))
* **instance_url:** heuristic now supports git remote URLs ([56dab86](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/56dab86117c109443a9422b85b58605fa5b774f1))



## [3.11.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.11.0...v3.11.1) (2021-01-25)


### Bug Fixes

* **publishing:** readme file has to contain absolute URLs ([2580ba3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/2580ba3387ff318483a626dc07633be66efd54aa))



# [3.11.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.10.0...v3.11.0) (2021-01-25)


### Bug Fixes

* **network:** new API logic supports custom certificates ([58c26f2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/58c26f20eabf15c6a7b74845d9e791be01b57c46))
* **webview:** issue/mr details not showing for VS Code 1.53.0 (insiders) ([35d6ecd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/35d6ecd1f5549364fd5376196f922d67026f3bfb))


### Features

* **editor:** auto completion for CI variables ([5c37266](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/5c37266f5bb3e21c3ae596fd7411973b4575986a))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !140](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/140) 👍



# [3.10.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.9.0...v3.10.0) (2021-01-19)


### Bug Fixes

* **mr review:** don't query position for webview discussions ([adc7706](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/adc7706d99c7ae471b939765ae4609b0d2846c72))
* avatars uploaded to GitLab don't show correctly ([6b51e4c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/6b51e4cab0f6444d30561b0118238356608684be))


### Features

* **mr review:** show comments on changed file diff ([cba961a](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/cba961a8953adc1eec2c24c38144e96267aedb7f))



# [3.9.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.8.0...v3.9.0) (2021-01-12)


### Bug Fixes

* **webview:** can't respond in comment thread in webview for MR/Issue ([32c38f5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/32c38f58c471fea2aafce55777bdfc29d4c980a2))
* **webview:** cosmetic fix of label note component ([7ce85cb](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/7ce85cba466ada35c1adb547296b5aeb4ef29fdc))
* **webview:** highlighting labels (including scoped) ([b30a7fd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b30a7fd3fdfd828a8a029c8fa61211d8a5a317b0))


### Features

* **statusbar:** create merge request when none exist for current branch ([33822ff](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/33822ff2a2a23d22a446d2fff3856fa1943aa47a)), closes [#291](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/291)
  * Implemented by [@jotoho](https://gitlab.com/jotoho) with [MR !155](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/155) 👍


### Performance Improvements

* **webview:** use GraphQL to load MR/Issue discussions ([bdcd20f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bdcd20fdb652f20a1eebffcdc001256860ac485f))
* reduce packaged extension size ([8d616d2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/8d616d2be2e010d98f6992fdc62c942e458e7307))
* replace moment with dayjs dependency ([4df1b48](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4df1b4838f1cb5608771ac1978cdb484daa4a7e5))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !141](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/141) 👍



# [3.8.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.7.0...v3.8.0) (2020-12-16)


### Bug Fixes

* **mr review:** showing MR Diff on Windows uses correct file path ([0dcd5e0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/0dcd5e0aa749f1d1e4e5b6ee14b08c867bfa9d03))
  * Implemented by [@Codekrafter](https://gitlab.com/Codekrafter) with [MR !144](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/144) 👍
* label notes disappear after submitting a comment ([89b1fee](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/89b1fee3f3e14e991d72d6f7805da1de876290a5))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !137](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/137) 👍


### Features

* **sidebar:** add avatar to merge request item ([126b4c9](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/126b4c93fb0113d0d6e2dbec047c2cf5c06aa9db))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !142](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/142) 👍
* **webview:** allow submitting comments with ctrl+enter ([fb93040](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/fb93040aad8e07000942a1ff4c9d8f680e8e02cc))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !138](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/138) 👍



# [3.7.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.6.2...v3.7.0) (2020-12-08)


### Bug Fixes

* handle disabled pipelines or MRs ([125af41](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/125af415403cdee697a6ecb19cd4a51f0feecdee))


### Features

* remove experimental features feature flag ([1370d8b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1370d8bb115fecb9ae6585bf84e91b1c21308309))
* **mr review:** show changed file diff (API-provided) ([1c82018](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/1c82018f8c3d6bc2d05dd404e52ec6379ea18415))
* show changed files for the MR ([a2b3f88](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a2b3f881f8de9c30bce5e423b51506a9935d6188))



## [3.6.2](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.6.1...v3.6.2) (2020-11-27)


### Bug Fixes

* custom queries don't work with scoped labels ([d9659c6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/d9659c6bc1213a41fa0dc6aee8ccb9f07a98c171))



## [3.6.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.6.0...v3.6.1) (2020-11-26)


### Bug Fixes

* don't double send message from issue detail ([b7e1ee3](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/b7e1ee30dd917efafae1118e21c7f68d089988ab))
* parse remotes with trailing slash ([12e091b](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/12e091b509ec6505ec0e7c41d3062e73a025dec6))



# [3.6.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.5.0...v3.6.0) (2020-10-26)


### Features

* enable experimental features by default ([eceebcd](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/eceebcda6fc018202481c0a16d863e04f627d7d7))
* include user-agent header in all API requests ([f4f7d48](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f4f7d48e200c168f6c6e9bc0d462168950a8c945))



# [3.5.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.4.0...v3.5.0) (2020-10-21)


### Features

* insert project snippets into the text editor ([a03468d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/a03468d9e525fa9c9835fa8466e48646b8369f18))
* warn user about deprecating custom certificate logic ([280275c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/280275c628904938f29e5d25c74189907402c596))



# [3.4.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.3.0...v3.4.0) (2020-10-19)


### Bug Fixes

* select project dialog gets stuck in a perpetual loop ([194be06](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/194be064912813fb16a5d0f3e9a1ca3fa2d8a4d2))
* **statusbar:** empty brackets show after pipeline status ([4a18c4c](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/4a18c4c23bb8cdbd531a72c24a3b957ef8aaafb5))
  * Implemented by [@KevSlashNull](https://gitlab.com/KevSlashNull) with [MR !102](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/102) 👍
* update extension project links to gitlab-org namespace ([f83b0f6](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/f83b0f6513e75f9fddf0e513be18d12080c5eeb6))
  * Implemented by [@salmanmo](https://gitlab.com/salmanmo) with [MR !109](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/109) 👍


### Features

* add project advanced search options ([bea5d9d](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/bea5d9dd1e4564b1fde3d0bbcde6e4bf081f5c62))



# [3.3.0](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.2.1...v3.3.0) (2020-09-21)


### Features

* better error reporting for fetching project and current user ([facb0e5](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/facb0e5426548e5407f28fffdf439e989be86519))
* detect instanceUrl from git remotes and GitLab access tokens ([457ca51](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/457ca510f1bb22a010d068300b53ad317e501b18))
  * Implemented by [@flood4life](https://gitlab.com/flood4life) with [MR !90](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/90) 👍
* every exception gets logged ([e286314](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/e2863142a8a9c0868c9d5dd116983fdfd1eba877))
* side panel error reporting ([eff8d2f](https://gitlab.com/gitlab-org/gitlab-vscode-extension/commit/eff8d2f8b365d4ab87587bfb412e5d0bd561dd93))



## [3.2.1](https://gitlab.com/gitlab-org/gitlab-vscode-extension/compare/v3.2.0...v3.2.1) (2020-08-31)

- No user facing changes. Release fixes `README.md` images [#226](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/226)

# v3.2.0 - 2020-08-03

- Publish GitLab Workflow extension to Open VSX Registry [#205](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/205)

### Fixed

- Command to create a new issue is not working [#218](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/218)

# v3.1.0 - 2020-07-28

- Copy GitLab link for the active file to the clipboard [#209](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/209)
  - Implemented by [@vegerot](https://gitlab.com/vegerot) with [MR !74](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/74) 👍

## v3.0.4 - 2020-07-03

- Increased interval for polling pipelines and merge requests for a branch [#211](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/211)

## v3.0.3 - 2020-06-29

- No user-facing changes.
- Fixed automated releasing of the extension [#206](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/206)

# v3.0.0 - 2020-06-25

- Support multi root workspaces.
- Enable custom queries in GitLab panel.
- Improvements to the issue and merge request webview.
- Adds gitlab icon as webview tab icon.
- Improve remote URL parsing to support non standard Gitlab usernames.
- Update Extension Icon to match the new vscode-codicons.

### Fixed

- Click on merge request "for current branch" doesn't do anything
- Unable to create Snippets [#195](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/195)
  - Fixed by [@massimeddu](https://gitlab.com/massimeddu) with [MR !62](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/merge_requests/62) 👍

## v2.2.2 - 2020-06-19

- Fix dependency issues caused by publishing the extension using `yarn`

## v2.2.1 - 2020-06-19

### Security

- [CVE-2020-13279](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-13279) Prevent possible client side code execution, https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/170

# v2.2.0 - 2019-11-06

- [Experimental Feature](https://gitlab.com/fatihacet/gitlab-vscode-extension#experimental-features): View Merge Request details and comments in VSCode. Click a Merge Request link from the sidebar and VSCode will open a new tab to show the Merge Request details. You can also directly comment on the Merge Request.

## v2.1.1 - 2019-07-10

### Fixed

- Showing issue details and discussions in VSCode was not working properly. Extension was only showing loading screen.

# v2.1.0 - 2019-05-10

### Fixed

- Ensure that WebView is fully loaded before sending message
  - Fixed by [@Grafexy](https://gitlab.com/Grafexy) with [MR !39](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/39) 👍
- Create public snippet when there is no GitLab project in open workspace
  - Fixed by [@ttilberg](https://gitlab.com/ttilberg) with [MR !38](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/38) 👍

### Documentation updates

- [@renestalder](https://gitlab.com/renestalder) improved documentation for additional custom domain information with [MR !35](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/35) 👍
- [@jparkrr](https://gitlab.com/jparkrr) fixed some typos with [MR !36](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/36) 👍

# v2.0.0 - 2019-02-14

- [Experimental Feature](https://gitlab.com/fatihacet/gitlab-vscode-extension#experimental-features): View issue details and comments right in the VSCode. Click an issue link from the sidebar and VSCode will open a new tab to show the issue details. You can also comment to the issue from VSCode.

## v1.9.3 - 2019-02-05

### Fixed

- Fix broken v1.9.2 by including require package
  - Fixed by [@swiffer](https://gitlab.com/swiffer) with [MR !33](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/33) 👍

## v1.9.2 - 2019-02-05 (Please skip this version and upgrade to v1.9.3)

### Fixed

- Node 8.5/8.6 request bug, moved vscode to devDependencies and upgraded npm packages
  - Fixed by [@swiffer](https://gitlab.com/swiffer) with [MR !32](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/32) 👍

### Changed

- [#85](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/85) Print URLs in "No token found" warning
  - This was done for troubleshooting purposes. A lot of people are having hard time to configure the instance url and hopefully this will give them a clue to understand what's going wrong.

## v1.9.1 - 2019-01-18

### Fixed

- [#28](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/28) Creating a snippet doesn't work when only 2 lines selected
  - Fixed by by [@joshanne](https://gitlab.com/joshanne) with [MR !30](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/30) 👍

# v1.9.0 - 2019-01-17

### Added

- Support for crt/key pair certificates for users that may use a \*.p12 certificate
  - Implemented by [@joshanne](https://gitlab.com/joshanne) with [MR !29](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/29) 👍

# v1.8.0 - 2019-01-02

### Added

- A new panel in the GitLab sidebar to show all MRs in the current project
  - Implemented by [@jkdufair](https://gitlab.com/jkdufair) with [MR !27](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/27) 👍

# v1.7.0 - 2018-12-13

### Added

- Ability to work with the non-root domains for self hosted GitLab instances.
  - Implemented by [@tuomoa](https://gitlab.com/tuomoa) with [MR !11](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/11) 👍
  - Special thanks to [@Turmio](https://gitlab.com/Turmio) for helping to test this. 👍

# v1.6.0 - 2018-12-12

### Security

- Fixed NPM security issues

### Added

- Pipeline notification on the status bar will now include the list of running and failed jobs
  - Implemented by [@jduponchelle](https://gitlab.com/jduponchelle) with [MR !23](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/23) 👍

### Fixed

- Refresh buttons on the sidebar were visible for all panes and even for other extensions.
  - Fixed by [@Logerfo](https://gitlab.com/Logerfo) with [MR !26](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/26) 👍

## v1.5.1 - 2018-11-28

### Fixed

- View in GitLab button in the pipeline updated notification was not visible
  - Fixed by [@Clapfire](https://gitlab.com/Clapfire) with [MR !24](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/24) 👍

# v1.5.0 - 2018-11-08

### Added

- A new config option to fetch pipeline data from a different Git remote [Read more](https://gitlab.com/fatihacet/gitlab-vscode-extension#configuration-options)
  - Implemented by [@jduponchelle](https://gitlab.com/jduponchelle) with [MR !22](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/22) and closes [Issue [#59](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/59)](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/59) 👍

# v1.4.0 - 2018-11-06

### Added

- A new config option to toggle pipeline status change notifications [Read more](https://gitlab.com/fatihacet/gitlab-vscode-extension#configuration-options)

### Changed

- Pipeline notifications introduced in v1.3.0 will not be on by default with this version. You need to manually set the option to true.

# v1.3.0 - 2018-11-05

### Added

- A new config option to set remote name manually [Read more](https://gitlab.com/fatihacet/gitlab-vscode-extension#configuration-options)
  - Implemented by [@jduponchelle](https://gitlab.com/jduponchelle) with [MR !18](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/18) 👍
- Extension will show a notification after pipeline status changed
  - Implemented by [@Clapfire](https://gitlab.com/Clapfire) with [MR !21](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/21) and closes [Issue [#32](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/32)](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/32) 👍

### Changed

- Pipeline action will not open the pipeline on the default browser
  - Changed by [@Clapfire](https://gitlab.com/Clapfire) with [MR !20](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/20) and closes [#31](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/31) 👍

# v1.2.0 - 2018-10-03

### Added

- A new config option to toggle MR status on status bar [Read more](https://gitlab.com/fatihacet/gitlab-vscode-extension#configuration-options)
  - Implemented by [@robinvoor](https://gitlab.com/robinvoor) with [MR !15](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/15) 👍

## v1.1.1 - 2018-10-03

### Fixed

- Invalid date parsing for unfinished pipelines.

# v1.1.0 - 2018-10-02

### Added

- A new config option to toggle GitLab related links on the status bar [Read more](https://gitlab.com/fatihacet/gitlab-vscode-extension#configuration-options)
  - Implemented with [this commit](https://gitlab.com/fatihacet/gitlab-vscode-extension/commit/6318028f1d3959ee0f70d22bb31b68bcbc4a998c) closes [#58](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/58)

### Fixed

- [#57](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/57) Can't use extension with self-hosted gitlab - scope validity
  - Fixed with [this commit](https://gitlab.com/fatihacet/gitlab-vscode-extension/commit/cf2fafec91df042ada35609848f251b6ebb02aeb)

# v1.0.0 - 2018-09-26

### Added

- A new panel on the sidebar to see the list of your issues and MRs alongside with the links and informations for your current branch. [Read more](https://gitlab.com/fatihacet/gitlab-vscode-extension#sidebar)

### Fixed

- [#41](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/41) Extension not opening the pipeline from command pallete
  - Fixed with [this commit](https://gitlab.com/fatihacet/gitlab-vscode-extension/commit/080a8c609f57df19b093dcfd0ec44cf89e7f5790)
- Respect VSCode http.proxy settings
  - Implemented by [@martianboy](https://gitlab.com/martianboy) with [MR !13](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/13) 👍

# v0.6.0 - 2018-03-02

### Added

- A new config option named `gitlab.ca` to set self signed certificates. [Read more](https://gitlab.com/fatihacet/gitlab-vscode-extension#configuration-options)
- A new config option named `gitlab.ignoreCertificateErrors` to ignore certificate errors while connecting and fetching data from GitLab instance. [Read more](https://gitlab.com/fatihacet/gitlab-vscode-extension#configuration-options)

### Fixed

- [#26](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/26) Support for on-premises GitLab instances with self-signed
  - Fixed by [@piec](https://gitlab.com/piec) with [MR !8](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/8) 👍
  - Possibily fixes [#23](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/23) and [#10](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/10)
- [#29](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/29) Support for on-premises GitLab instances with no certification (http)

## v0.5.2 - 2018-03-01

### Added

- GitLab Workflow now supports multiple instances.
  - Implemented by [@csvn](https://gitlab.com/csvn) with [MR !5](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/5) 👍
- ESLint and Prettier integration for dev environment.
  - Added by [@alpcanaydin](https://gitlab.com/alpcanaydin) with [MR !6](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/6) 👍

### Changed

- Private Access Token set and remove flow changed. We automatically migrate existing keys so this change shouldn't break your existing workflow or you shouln't need to do anyhing. Read more [here](https://gitlab.com/fatihacet/gitlab-vscode-extension#setup) and [here](https://gitlab.com/fatihacet/gitlab-vscode-extension#multiple-gitlab-instances).

## v0.5.1 - 2018-02-27

### Added

- Add an option to turn off the issue link in the status bar

# v0.5.0 - 2018-02-25

### Added

- [#25](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/25) Create snippet from selection or entire file.
- [#22](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/22) Add support for .gitlab-ci.yml lint-ing
- [#20](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/20) Added Read more and Set token now buttons to token ask notification.

## v0.4.3 - 2018-02-19

### Fixed

- [#19](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/19) Can't add token

## v0.4.2 - 2018-02-18

### Added

- 🎉 [New logo](https://gitlab.com/fatihacet/gitlab-vscode-extension/raw/main/src/assets/logo.png) _Special thanks to [@ademilter](https://twitter.com/ademilter) for his amazing work_ 👍

### Fixed

- [#14](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/14) GitLab: Open active file on GitLab - workspace path not filtered out
  - Fixed by [@swiffer](https://gitlab.com/swiffer) with [MR !1](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/1) 👍
- [#16](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/16) Does not work witch projects in subgroup
  - Fixed by [@AmandaCameron](https://gitlab.com/AmandaCameron) with [MR !3](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/merge_requests/3) 👍

## v0.4.1 - 2018-02-10

### Fixed

- [#17](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/17) Cross project closing issue goes to wrong URL.

# v0.4.0 - 2018-02-02

### Added

- Added search feature for MRs and Issues. Supports basic and advanced search.
  - For basic search, just type anything and hit Enter. Extension will search in title and description fields of MRs and issues.
  - For advanced search, you can use multiple tokens to search issues and MRs where tokens can be `title`, `author`, `assignee`, `labels`, `label`, `milestone`, `state`, `scope`. Some example usages:
    - discussions refactor
    - title: discussions refactor author: fatihacet labels: frontend, performance milestone: 10.5
    - title: group labels author: annabeldunstone assignee: timzallmann label: frontend
- Added closing issue link of current MR to status bar and clicking it will open related issue on GitLab.
- Added compare current branch with master feature.
- Added MIT License

### Changed

- Pipeline not found text on status bar will be hidden if there is no GL project.
- Significantly reduced timing of opening current MR from status bar.

## v0.3.4 - 2018-02-01

### Fixed

- [#12](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/12) Fix fetching git remote and tracking branch names.

## v0.3.3 - 2018-02-01

### Fixed

- Fixed slient failing of status bar items and hide them on error.

## v0.3.2 - 2018-01-31

### Fixed

- Fixed fetching remote url. Thanks to @kushalpandya.

## v0.3.1 - 2018-01-30

### Changed

- Clicking the pipeline status text on status bar now opens Pipeline action picker.

# v0.3.0 - 2018-01-30

### Added

- Pipeline actions picker
  - View latest pipeline on GitLab.com
  - Create a new pipeline for your current branch
  - Retry last pipeline
  - Cancel last pipeline

## v0.2.2 - 2018-01-29

### Added

- Added a new command to open current pipeline on GitLab.
- Added click handler to pipeline status text on status bar to open pipeline on GitLab.
- Added refresh interval for MR link on status bar.

### Fixed

- [#9](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/9) Branch names with slashes appear to break URL generation

## v0.2.1 - 2018-01-28

### Fixed

- Update pipeline status on status bar.

# v0.2.0 - 2018-01-27

### Added

- Added a new service layer to opearate git commands.
- Added a new service layer to talk with GitLab API.
- Added new methods to get info from Git and GitLab.
- Added Personal Access Token flow providing menu options to save and delete GitLab PAT.
- Implemented MR link on status bar and add click handler to open MR on GitLab.
- Implemented pipeline status on status bar.
- Implemented open active file on GitLab including active line number and selection.
- Implemented open current MR on GitLab.
- Implemented open GitLab to create new merge request.
- Implemented open GitLab to create new issue.

### Changed

- Deprecated `gitlab.userId`.
- Show assigned Issues and MRs now work project specific.

### Fixed

- [#7](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/7) Remove hardcoded origin in fetchGitRemote method.
- [#3](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/3) Assigned MR and issues openers should be project specific
- [#1](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/1) Local branch name and tracking remote branch name may not be the same
- [#8](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/8) API URL is hardcoded
- [#4](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/4) Remove pipes `|` from git commands
- [#5](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/5) Pipeline info won't be visible in status bar if there is no MR
- [#2](https://gitlab.com/fatihacet/gitlab-vscode-extension/-/issues/4) Remove own MR requirement to find branch MR

## v0.1.1 - 2018-01-25

### Added

- Implemented show issues assigned to me.
- Implemented show merge requests assigned to me.
