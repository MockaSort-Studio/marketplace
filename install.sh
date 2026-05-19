#!/usr/bin/env bash
# MockaSort marketplace installer
# Usage: curl -sL https://raw.githubusercontent.com/MockaSort-Studio/marketplace/main/install.sh | bash -s <plugin-name>
set -euo pipefail

PLUGIN="${1:-}"
REGISTRY="https://raw.githubusercontent.com/MockaSort-Studio/marketplace/main/plugins.json"

[ -z "$PLUGIN" ] && { echo "Usage: install.sh <plugin-name>"; echo "Available plugins:"; curl -sL "$REGISTRY" | python3 -c "import json,sys; [print(' ',p['name'],'-',p['description'][:60]) for p in json.load(sys.stdin)['plugins']]"; exit 1; }

INSTALL_SCRIPT=$(curl -sL "$REGISTRY" | python3 -c "
import json,sys
plugins = json.load(sys.stdin)['plugins']
match = next((p for p in plugins if p['name'] == '$PLUGIN'), None)
if not match: print('ERROR: unknown plugin'); exit(1)
print(match['install_script'])
")

curl -sL "$INSTALL_SCRIPT" | bash
