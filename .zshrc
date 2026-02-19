export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh"

plugins=(git gitfast vi-mode history-substring-search)

source $ZSH/oh-my-zsh.sh

# Go
export GOPATH="$HOME/go"
export GOLANG_PROTOBUF_REGISTRATION_CONFLICT=warn
export PATH="$PATH:$HOME/bin:$GOPATH/bin"
export GO111MODULE=auto
export GOPRIVATE=github.com/DataDog
export GOPROXY=binaries.ddbuild.io,https://proxy.golang.org,direct
export GONOSUMDB=github.com/DataDog,go.ddbuild.io

# Datadog
export DATADOG_ROOT="$HOME/dd"
export PATH="$PATH:$DATADOG_ROOT/devtools/bin"

alias GO='cd $GOPATH/src/github.com/DataDog'
alias gcp='git checkout prod'
alias gcm='git checkout main'
alias gpo='git push origin $(git_current_branch)'
alias k='kubectl'
alias pods='kubectl get pods'
alias gaz='bzl run //:gazelle'
alias snap='bzl run //:snapshot'
alias dbash='docker run -it --entrypoint /bin/bash'

eval "$(direnv hook zsh)"

epoch() {
  date -d @$1
}

# Secrets from workspace secrets system
export GITLAB_TOKEN=$(cat /run/user/$(id -u bits)/secrets/GITLAB_TOKEN 2>/dev/null || echo "")
export ANTHROPIC_API_KEY=$(cat /run/user/$(id -u bits)/secrets/ANTHROPIC_API_KEY 2>/dev/null || echo "")

export PATH="~/.local/bin:$PATH"
export TMPDIR=/tmp
