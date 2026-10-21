#!/usr/bin/env bash

set -e

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="${HOME}/.local/bin"
BASHRC="${HOME}/.bashrc"

echo "==> Setting executable permissions..."
chmod +x "${PROJECT_ROOT}/scripts/themeMasterDaemon.sh"
chmod +x "${PROJECT_ROOT}/scripts/themeMaster-set.sh"
chmod +x "${PROJECT_ROOT}/scripts/themeMaster-next.sh"
chmod +x "${PROJECT_ROOT}/scripts/themeMaster-apply.sh"
if [[ -f "${PROJECT_ROOT}/bin/themeMaster" ]]; then
    chmod +x "${PROJECT_ROOT}/bin/themeMaster"
fi

echo "==> Symlinking into ${BIN_DIR}..."
mkdir -p "$BIN_DIR"

# 1. Link C++ engine binary from bin/
if [[ -f "${PROJECT_ROOT}/bin/themeMaster" ]]; then
    ln -sf "${PROJECT_ROOT}/bin/themeMaster" "${BIN_DIR}/themeMaster"
else
    echo "[!] Warning: ${PROJECT_ROOT}/bin/themeMaster not found. Compile CMake project first!"
fi

# 2. Link shell scripts from scripts/
ln -sf "${PROJECT_ROOT}/scripts/themeMasterDaemon.sh" "${BIN_DIR}/themeMasterdaemon"
ln -sf "${PROJECT_ROOT}/scripts/themeMaster-set.sh" "${BIN_DIR}/themeMaster-set"
ln -sf "${PROJECT_ROOT}/scripts/themeMaster-next.sh"   "${BIN_DIR}/themeMaster-next"
ln -sf "${PROJECT_ROOT}/scripts/themeMaster-apply.sh"   "${BIN_DIR}/themeMaster-apply"

echo "==> Updating PATH in ${BASHRC}..."

# Ensure ~/.local/bin is in PATH for shell & launcher detection
if ! grep -q 'HOME/.local/bin' "$BASHRC" && [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo '' >> "$BASHRC"
    echo '# Added by ThemeMaster setup' >> "$BASHRC"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$BASHRC"
fi

echo "==> Setup complete!"
echo "    - C++ Engine:  'themeMaster'"
echo "    - Daemon:      'themeMasterdaemon'"
echo "    - Switcher:    'themeMaster-set'"
echo "    - Applier:    'themeMaster-apply'"