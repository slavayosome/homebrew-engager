# homebrew-engager

Homebrew tap for [Engager](https://github.com/slavayosome/engager) CLIs.

## Install

```sh
brew install slavayosome/engager/engager-agent
```

Or tap first, then install:

```sh
brew tap slavayosome/engager
brew install engager-agent
```

`engager-agent` is the local autonomous runner for Engager agent-led campaigns.
It requires the [`claude` CLI](https://docs.anthropic.com/en/docs/claude-code)
and Node ≥20 on your machine. Run `engager-agent` to launch the setup wizard.
