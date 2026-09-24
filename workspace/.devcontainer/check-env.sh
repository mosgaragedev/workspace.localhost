#!/usr/bin/env bash
# AI编译器开发环境健康检查脚本
# 容器启动时自动运行，也可手动执行
# 使用方式: bash .devcontainer/check-env.sh [--no-color]
# 输出: 彩色终端报告 + ~/env-check-report.md

# 关闭-e（错误立即退出），保留-u（未定义变量报错）和pipefail（管道失败检测），避免脚本提前中断
set -uo pipefail

# ── 环境变量配置：确保用户级工具可被找到 ───────────────────────────
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:/usr/lib/node_modules/.bin:$PATH"

# ── 终端颜色配置 ────────────────────────────────────────────────────
if [[ "${1:-}" == "--no-color" ]] || [[ ! -t 1 ]]; then
    # 无颜色模式
    GRN="" RED="" YLW="" BLD="" DIM="" RST=""
else
    # 有颜色模式（定义各颜色的ANSI转义码）
    GRN="\e[32m" RED="\e[31m" YLW="\e[33m" BLD="\e[1m" DIM="\e[2m" RST="\e[0m"
fi

# 定义状态图标
PASS="${GRN}${BLD}✓${RST}"
FAIL="${RED}${BLD}✗${RST}"
WARN="${YLW}${BLD}!${RST}"
# 分隔线样式
SEP="${DIM}$(printf '─%.0s' {1..60})${RST}"

# 初始化检查统计变量
PASS_COUNT=0
FAIL_COUNT=0
WARN_COUNT=0
# 报告文件保存路径
REPORT_FILE="$HOME/env-check-report.md"
# 存储Markdown报告内容
REPORT=""

# ── 工具函数定义 ───────────────────────────────────────────────────
# 打印检查模块标题，并写入Markdown报告
section() {
    local title="$1"
    echo ""
    echo -e "${BLD}${title}${RST}"
    echo -e "$SEP"
    REPORT+="\n## ${title}\n\n"
}

# 检查命令是否存在并提取版本号
# 参数1: 显示标签  参数2: 命令名  参数3(可选): 版本查询参数（默认--version）
check_cmd() {
    local label="$1" cmd="$2" vflag="${3:---version}"
    local ver
    # 检查命令是否存在，存在则获取版本信息
    if ver=$(command -v "$cmd" &>/dev/null && "$cmd" $vflag 2>&1 | head -1 || true); then
        # 提取版本号（兼容所有grep版本，用基础正则）
        ver=$(echo "$ver" | grep -E -o '[0-9]+\.[0-9]+\.?[0-9]*' | head -1 || echo "found")
        printf "  %b  %-34s %s\n" "$PASS" "$label" "${DIM}${ver}${RST}"
        REPORT+="| ✅ | \`${label}\` | ${ver} |\n"
        (( PASS_COUNT++ ))
    else
        # 命令不存在时标记失败
        printf "  %b  %-34s %s\n" "$FAIL" "$label" "${RED}NOT FOUND${RST}"
        REPORT+="| ❌ | \`${label}\` | NOT FOUND |\n"
        (( FAIL_COUNT++ ))
    fi
}

# 检查文件/目录是否存在
# 参数1: 显示标签  参数2: 文件/目录路径
check_file() {
    local label="$1" path="$2"
    if [[ -e "$path" ]]; then
        # 文件存在标记通过
        printf "  %b  %-34s %s\n" "$PASS" "$label" "${DIM}${path}${RST}"
        REPORT+="| ✅ | ${label} | \`${path}\` |\n"
        (( PASS_COUNT++ ))
    else
        # 文件不存在标记失败
        printf "  %b  %-34s %s\n" "$FAIL" "$label" "${RED}${path} missing${RST}"
        REPORT+="| ❌ | ${label} | \`${path}\` missing |\n"
        (( FAIL_COUNT++ ))
    fi
}

# 检查环境变量是否设置且符合预期
# 参数1: 环境变量名  参数2(可选): 预期包含的子字符串
check_env() {
    local var="$1" expected="${2:-}"
    local val="${!var:-}"
    if [[ -z "$val" ]]; then
        # 变量未设置标记失败
        printf "  %b  %-34s %s\n" "$FAIL" "\$${var}" "${RED}not set${RST}"
        REPORT+="| ❌ | \`\$${var}\` | not set |\n"
        (( FAIL_COUNT++ ))
    elif [[ -n "$expected" && "$val" != *"$expected"* ]]; then
        # 变量值不符合预期标记警告
        printf "  %b  %-34s %s\n" "$WARN" "\$${var}" "${YLW}${val} (expected '${expected}')${RST}"
        REPORT+="| ⚠️  | \`\$${var}\` | \`${val}\` (expected \`${expected}\`) |\n"
        (( WARN_COUNT++ ))
    else
        # 变量设置正常标记通过
        printf "  %b  %-34s %s\n" "$PASS" "\$${var}" "${DIM}${val}${RST}"
        REPORT+="| ✅ | \`\$${var}\` | \`${val}\` |\n"
        (( PASS_COUNT++ ))
    fi
}

# 检查PATH环境变量是否包含指定路径
# 参数1: 显示标签  参数2: 要检查的路径子串
check_path_contains() {
    local label="$1" substr="$2"
    if echo "$PATH" | grep -q "$substr"; then
        # 路径存在标记通过
        printf "  %b  %-34s %s\n" "$PASS" "PATH ∋ ${label}" "${DIM}${substr}${RST}"
        REPORT+="| ✅ | PATH contains \`${label}\` | \`${substr}\` |\n"
        (( PASS_COUNT++ ))
    else
        # 路径不存在标记警告
        printf "  %b  %-34s %s\n" "$WARN" "PATH ∋ ${label}" "${YLW}${substr} not in PATH${RST}"
        REPORT+="| ⚠️  | PATH contains \`${label}\` | \`${substr}\` not found |\n"
        (( WARN_COUNT++ ))
    fi
}

# 检查ccache缓存大小是否设置为无限制（0表示无限制）
check_ccache_unlimited() {
    local val
    val=$(ccache --get-config max_size 2>/dev/null || echo "unknown")
    if [[ "$val" == "0" ]]; then
        # 无限制标记通过
        printf "  %b  %-34s %s\n" "$PASS" "ccache max_size" "${DIM}unlimited (0)${RST}"
        REPORT+="| ✅ | ccache \`max_size\` | unlimited (0) |\n"
        (( PASS_COUNT++ ))
    else
        # 有限制标记警告
        printf "  %b  %-34s %s\n" "$WARN" "ccache max_size" "${YLW}${val} (expected 0/unlimited)${RST}"
        REPORT+="| ⚠️  | ccache \`max_size\` | \`${val}\` (expected 0 = unlimited) |\n"
        (( WARN_COUNT++ ))
    fi
}

# 检查zsh插件是否在.zshrc中启用
# 参数1: 插件名
check_zsh_plugin() {
    local plugin="$1"
    if grep -qE "plugins=\(.*\b${plugin}\b" "$HOME/.zshrc" 2>/dev/null; then
        # 插件启用标记通过
        printf "  %b  %-34s %s\n" "$PASS" "zsh plugin: ${plugin}" "${DIM}enabled in .zshrc${RST}"
        REPORT+="| ✅ | zsh plugin: \`${plugin}\` | enabled in .zshrc |\n"
        (( PASS_COUNT++ ))
    else
        # 插件未启用标记失败
        printf "  %b  %-34s %s\n" "$FAIL" "zsh plugin: ${plugin}" "${RED}not enabled in .zshrc${RST}"
        REPORT+="| ❌ | zsh plugin: \`${plugin}\` | not enabled in .zshrc |\n"
        (( FAIL_COUNT++ ))
    fi
}

# ── 脚本头部信息 ───────────────────────────────────────────────────
# 获取当前时间和主机名
NOW=$(date '+%Y-%m-%d %H:%M:%S')
HOSTNAME=$(hostname)

# 打印检查标题
echo ""
echo -e "${BLD}╔══════════════════════════════════════════════════════════╗${RST}"
echo -e "${BLD}║     AI Compiler Environment — Health Check               ║${RST}"
echo -e "${BLD}╚══════════════════════════════════════════════════════════╝${RST}"
echo -e "  ${DIM}Host: ${HOSTNAME}   Time: ${NOW}${RST}"

# 初始化Markdown报告头部
REPORT="# AI Compiler Environment — Health Check Report\n\n"
REPORT+="> **Host:** \`${HOSTNAME}\`  \n> **Generated:** ${NOW}\n\n"
REPORT+="---\n"

# ───────────────────────────────────────────────────────────────
# ① 检查LLVM/Clang工具链（AI编译器核心依赖）
section "① LLVM / Clang Toolchain"
REPORT+="| Status | Tool | Version |\n|--------|------|---------|\n"
check_cmd "clang"              clang
check_cmd "clang++"            clang++
check_cmd "clangd"             clangd
check_cmd "clang-format"       clang-format
check_cmd "clang-tidy"         clang-tidy
check_cmd "lldb"               lldb
check_cmd "lld  (ld.lld)"      ld.lld
check_cmd "llvm-ar"            llvm-ar
check_cmd "llvm-cov"           llvm-cov
check_cmd "llvm-profdata"      llvm-profdata
check_cmd "llvm-symbolizer"    llvm-symbolizer
check_cmd "llvm-objdump"       llvm-objdump

# ───────────────────────────────────────────────────────────────
# ② 检查构建工具
section "② Build Tools"
REPORT+="\n| Status | Tool | Details |\n|--------|------|---------|\n"
check_cmd "ccache"  ccache
check_ccache_unlimited
check_cmd "cmake"   cmake
check_cmd "make"    make
check_cmd "ninja"   ninja   "--version"

# ───────────────────────────────────────────────────────────────
# ③ 检查Shell环境
section "③ Shell"
REPORT+="\n| Status | Item | Details |\n|--------|------|---------|\n"
check_cmd "zsh"       zsh
check_file "oh-my-zsh"  "$HOME/.oh-my-zsh"
check_file "plugin: zsh-syntax-highlighting (files)" \
    "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
check_file "plugin: zsh-autosuggestions (files)" \
    "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
check_zsh_plugin "git"
check_zsh_plugin "zsh-syntax-highlighting"
check_zsh_plugin "zsh-autosuggestions"
check_zsh_plugin "extract"

# 检查默认shell是否为zsh
CURRENT_SHELL=$(getent passwd "$(whoami)" | cut -d: -f7)
if [[ "$CURRENT_SHELL" == *"zsh"* ]]; then
    printf "  %b  %-34s %s\n" "$PASS" "default shell" "${DIM}${CURRENT_SHELL}${RST}"
    REPORT+="| ✅ | default shell | \`${CURRENT_SHELL}\` |\n"
    (( PASS_COUNT++ ))
else
    printf "  %b  %-34s %s\n" "$WARN" "default shell" "${YLW}${CURRENT_SHELL} (expected zsh)${RST}"
    REPORT+="| ⚠️  | default shell | \`${CURRENT_SHELL}\` (expected zsh) |\n"
    (( WARN_COUNT++ ))
fi

# ───────────────────────────────────────────────────────────────
# ④ 检查Python环境
section "④ Python"
REPORT+="\n| Status | Tool | Version |\n|--------|------|---------|\n"
check_cmd "uv"          uv
check_cmd "python3"     python3
check_cmd "pip3"        pip3

# 检查uv管理的Python版本是否存在
if uv python list 2>/dev/null | grep -q 'cpython' || true; then
    PY_VER=$(uv python list 2>/dev/null | grep 'cpython' | head -1 | awk '{print $1}')
    printf "  %b  %-34s %s\n" "$PASS" "uv-managed python" "${DIM}${PY_VER}${RST}"
    REPORT+="| ✅ | uv-managed python | ${PY_VER} |\n"
    (( PASS_COUNT++ ))
else
    printf "  %b  %-34s %s\n" "$WARN" "uv-managed python" "${YLW}none installed (run: uv python install 3.13)${RST}"
    REPORT+="| ⚠️  | uv-managed python | none installed |\n"
    (( WARN_COUNT++ ))
fi

# ───────────────────────────────────────────────────────────────
# ⑤ 检查Node.js环境
section "⑤ Node.js"
REPORT+="\n| Status | Tool | Version |\n|--------|------|---------|\n"
check_cmd "node"          node
check_cmd "npm"           npm
check_cmd "typescript (tsc)" tsc
check_cmd "typescript-language-server" typescript-language-server
check_cmd "eslint"        eslint

# ───────────────────────────────────────────────────────────────
# ⑥ 检查Rust环境
section "⑥ Rust"
REPORT+="\n| Status | Tool | Version |\n|--------|------|---------|\n"
check_cmd "rustup"  rustup
check_cmd "cargo"   cargo
check_cmd "rustc"   rustc

# ───────────────────────────────────────────────────────────────
# ⑦ 检查LSP语言服务器
section "⑦ LSP Servers"
REPORT+="\n| Status | LSP Server | Language |\n|--------|------------|----------|\n"
check_cmd "clangd (C/C++ LSP)"                    clangd
check_cmd "typescript-language-server (TS/JS LSP)" typescript-language-server "--version"
check_cmd "pyright (Python LSP)"                  pyright
check_cmd "vscode-css-languageserver (CSS LSP)"   vscode-css-languageserver    "--version"
check_cmd "vscode-html-language-server (HTML LSP)" vscode-html-language-server "--version"
check_cmd "vscode-json-languageserver (JSON LSP)" vscode-json-languageserver   "--version"

# ───────────────────────────────────────────────────────────────
# ⑧ 检查环境变量
section "⑧ Environment Variables"
REPORT+="\n| Status | Variable | Value |\n|--------|----------|-------|\n"
check_env "CC"                "clang"
check_env "CXX"               "clang++"
check_env "CCACHE_CONFIGPATH" "/etc/ccache.conf"
check_path_contains "~/.local/bin"  "$HOME/.local/bin"
check_path_contains "~/.cargo/bin"  "$HOME/.cargo/bin"

# ───────────────────────────────────────────────────────────────
# ⑨ 检查工作区配置文件（仅保留.clangd检查）
section "⑨ Workspace Config Files"
REPORT+="\n| Status | File | Path |\n|--------|------|------|\n"
check_file ".clangd"       ".clangd"

# ── 检查结果汇总 ─────────────────────────────────────────────────
echo ""
echo -e "${BLD}╔══════════════════════════════════════════════════════════╗${RST}"
if (( FAIL_COUNT == 0 && WARN_COUNT == 0 )); then
    echo -e "${BLD}║  ${GRN}所有检查项通过${RST}${BLD}                                      ║${RST}"
elif (( FAIL_COUNT == 0 )); then
    echo -e "${BLD}║  ${YLW}${PASS_COUNT} 项通过  ${WARN_COUNT} 项警告  ${FAIL_COUNT} 项失败${RST}${BLD}                          ║${RST}"
else
    echo -e "${BLD}║  ${RED}${PASS_COUNT} 项通过  ${WARN_COUNT} 项警告  ${FAIL_COUNT} 项失败${RST}${BLD}                          ║${RST}"
fi
echo -e "${BLD}╚══════════════════════════════════════════════════════════╝${RST}"

# ── 生成Markdown报告文件 ────────────────────────────────────────
REPORT+="\n---\n\n"
REPORT+="## 检查汇总\n\n"
REPORT+="| 状态 | 数量 |\n|---|---|\n"
REPORT+="| ✅ 通过  | ${PASS_COUNT} |\n"
REPORT+="| ⚠️  警告 | ${WARN_COUNT} |\n"
REPORT+="| ❌ 失败  | ${FAIL_COUNT} |\n"

# 将报告内容写入文件
printf "%b" "$REPORT" > "$REPORT_FILE"
echo -e "  ${DIM}报告已保存 → ${REPORT_FILE}${RST}"
echo ""

# ── 脚本退出逻辑：仅当有失败项时返回非0退出码 ───────────────────
if (( FAIL_COUNT == 0 )); then
    exit 0
else
    exit 1
fi
