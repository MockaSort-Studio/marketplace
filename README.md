# MockaSort Marketplace

Self-hosted plugin registry for Claude Code — Hall-native plugins.

The official Claude Code marketplace is unnecessary for Hall plugins, which are designed to work alongside the [Hall of Automata](https://github.com/MockaSort-Studio/hall-of-automata) infrastructure.

## Install a plugin

```bash
curl -sL https://raw.githubusercontent.com/MockaSort-Studio/marketplace/main/install.sh | bash -s hall-of-automata-cli
```

Or install directly from the plugin repo:

```bash
curl -sL https://raw.githubusercontent.com/MockaSort-Studio/hall-of-automata-cli/master/scripts/install.sh | bash
```

## Available plugins

| Plugin | Description | Version |
|--------|-------------|---------|
| [hall-of-automata-cli](https://github.com/MockaSort-Studio/hall-of-automata-cli) | Persistent local orchestrator — plan, dispatch, and coordinate specialist agents with Old Major | 0.1.0 |

## Adding a plugin

1. Ensure your plugin has a `.claude-plugin/plugin.json` manifest
2. Add a `scripts/install.sh` to your repo
3. Open a PR adding an entry to `plugins.json` in this repo
