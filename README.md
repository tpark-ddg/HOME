# HOME

My `$HOME` dir setup for [Datadog Workspaces](https://datadoghq.atlassian.net/wiki/spaces/DEVX/pages/3109585281/Getting+Started+with+Workspaces+official).

## Usage

```shell
workspaces create <name> --dotfiles https://github.com/tony.park/HOME
```

## Structure

- `install.sh` — entry point, logs to `~/install.log`
- `install_helper.sh` — installs packages, copies dotfiles, configures git
- `.zshrc` — shell config
- `.gitconfig` — git user config and URL rewrites
- `.claude/` — Claude Code config
