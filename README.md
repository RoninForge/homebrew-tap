# RoninForge Homebrew tap

Homebrew tap for [RoninForge](https://roninforge.org) developer tools.

## Install

```bash
brew tap roninforge/tap
brew install hanko
brew install tsuba
brew install budgetclaw
```

Or install directly without tapping first:

```bash
brew install roninforge/tap/hanko
```

## Available formulas

| Formula | Description | Repo |
|---|---|---|
| `hanko` | Validate Claude Code plugin manifests before submission | [RoninForge/hanko](https://github.com/RoninForge/hanko) |
| `tsuba` | Scaffold marketplace-ready Claude Code skills, plugins, hooks, and agents | [RoninForge/tsuba](https://github.com/RoninForge/tsuba) |
| `budgetclaw` | Local spend monitor and budget enforcer for Claude Code | [RoninForge/budgetclaw](https://github.com/RoninForge/budgetclaw) |

## Updating

```bash
brew update
brew upgrade hanko tsuba budgetclaw
```

## License

Each tool ships under its own license (all MIT as of this writing). The formulas in this tap are MIT.
