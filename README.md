# Homebrew Tap for Muxara

This tap contains the [Homebrew](https://brew.sh/) cask formula for [Muxara](https://github.com/muxara/muxara), a desktop control plane for managing parallel Claude Code sessions.

## Installation

```bash
brew tap muxara/muxara
brew install --cask muxara
```

## Updating

```bash
brew upgrade --cask muxara
```

## Uninstalling

```bash
brew uninstall --cask muxara

# Also remove preferences and application data:
brew uninstall --cask --zap muxara
```

## Requirements

- macOS 12 (Monterey) or later
- [tmux](https://github.com/tmux/tmux) (`brew install tmux`)
- [iTerm2](https://iterm2.com/)
- [Claude Code](https://claude.ai/code)
