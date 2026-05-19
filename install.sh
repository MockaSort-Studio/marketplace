#!/usr/bin/env bash
# Fallback manual installer — prefer /plugin marketplace add MockaSort-Studio/marketplace
# Usage: curl -sL https://raw.githubusercontent.com/MockaSort-Studio/marketplace/main/install.sh | bash -s <plugin-name>
set -euo pipefail

PLUGIN="${1:-}"
[ -z "$PLUGIN" ] && { echo "Usage: install.sh <plugin-name>"; echo "Or use: /plugin marketplace add MockaSort-Studio/marketplace"; exit 1; }

case "$PLUGIN" in
  hall-of-automata-cli)
    curl -sL https://raw.githubusercontent.com/MockaSort-Studio/hall-of-automata-cli/master/scripts/install.sh | bash
    ;;
  *)
    echo "Unknown plugin: $PLUGIN"; exit 1
    ;;
esac
