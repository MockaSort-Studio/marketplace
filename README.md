# MockaSort Marketplace

Self-hosted Claude Code plugin registry for Hall-native plugins. No Anthropic marketplace submission required.

## Install

**Step 1 — add the marketplace (once):**
```
/plugin marketplace add MockaSort-Studio/marketplace
```

**Step 2 — install a plugin:**
```
/plugin install hall-of-automata-cli@mockasort
```

That's it. Updates come in automatically via `/plugin marketplace update mockasort`.

## Available plugins

| Plugin | Description |
|--------|-------------|
| `hall-of-automata-cli` | Persistent local orchestrator — plan, dispatch, and coordinate specialist agents with Old Major |

## Adding a plugin to this registry

1. Ensure your plugin repo has a `.claude-plugin/plugin.json` manifest
2. Open a PR adding an entry to `.claude-plugin/marketplace.json`
