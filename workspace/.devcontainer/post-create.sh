#!/bin/bash
# post-create.sh — runs once after the container is created.
set -e

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

echo "──────────────────────────────────────────────"
echo " AI Compiler Environment – post-create setup"
echo "──────────────────────────────────────────────"

# ── Python (uv) ───────────────────────────────────────────────────────────────
echo "› Installing default Python 3.13 via uv..."
uv python install 3.13 2>/dev/null || uv python install 3.12 || true

# ── .clangd workspace config ──────────────────────────────────────────────────
# Copy the default .clangd into the workspace root only if one doesn't exist.
if [ ! -f ".clangd" ] && [ -f ".devcontainer/.clangd" ]; then
    cp .devcontainer/.clangd .clangd
    echo "› Copied .clangd to workspace root"
fi

# ── tsconfig.json baseline ────────────────────────────────────────────────────
# Only create if there's no tsconfig yet (TypeScript projects will have their own).
if [ ! -f "tsconfig.json" ]; then
    cat > tsconfig.json << 'TSEOF'
{
  "compilerOptions": {
    "target": "ES2022",
    "module": "NodeNext",
    "moduleResolution": "NodeNext",
    "lib": ["ES2022"],
    "strict": true,
    "noUncheckedIndexedAccess": true,
    "exactOptionalPropertyTypes": true,
    "noImplicitOverride": true,
    "esModuleInterop": true,
    "skipLibCheck": true,
    "outDir": "dist",
    "rootDir": "src",
    "declaration": true,
    "declarationMap": true,
    "sourceMap": true
  },
  "include": ["src/**/*"],
  "exclude": ["node_modules", "dist"]
}
TSEOF
    echo "› Created baseline tsconfig.json"
fi

# ── .prettierrc baseline ──────────────────────────────────────────────────────
if [ ! -f ".prettierrc" ] && [ ! -f ".prettierrc.json" ]; then
    cat > .prettierrc << 'PRETEOF'
{
  "semi": true,
  "singleQuote": false,
  "trailingComma": "all",
  "printWidth": 100,
  "tabWidth": 2
}
PRETEOF
    echo "› Created baseline .prettierrc"
fi

echo "✓ Post-create setup complete"
