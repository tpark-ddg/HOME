export PATH=$HOME/bin:/usr/local/bin:$PATH

# Go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export GOLANG_PROTOBUF_REGISTRATION_CONFLICT=warn
export GO111MODULE=auto
export GOPRIVATE=github.com/DataDog
export GOPROXY=binaries.ddbuild.io,https://proxy.golang.org,direct
export GONOSUMDB=github.com/DataDog,go.ddbuild.io

# Datadog
export DATADOG_ROOT="$HOME/dd"
export PATH="$PATH:$DATADOG_ROOT/devtools/bin"

# Aliases
alias GO='cd $GOPATH/src/github.com/DataDog'
alias gcp='git checkout prod'
alias gcm='git checkout main'
alias gpo='git push origin $(git branch --show-current)'
alias k='kubectl'
alias pods='kubectl get pods'

# Preferred editor
export EDITOR='vim'

eval "$(direnv hook zsh)"

# Secrets from workspace secrets system
export GITLAB_TOKEN=$(cat /run/user/$(id -u bits)/secrets/GITLAB_TOKEN 2>/dev/null || echo "")
export ANTHROPIC_API_KEY=$(cat /run/user/$(id -u bits)/secrets/ANTHROPIC_API_KEY 2>/dev/null || echo "")

export TMPDIR=/tmp
