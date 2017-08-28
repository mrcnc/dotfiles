# prompt
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
PS1="\[\e[1;32m\]\u@\h\[\e[1;34m\] \w\[\e[0m\]\$(__git_ps1)\[\e[1;34m\] \n$\[\e[0m\] "

# aliases
alias ls='ls -hG'
alias ll='ls -al'
alias h='history'
alias grep='grep --color=auto'

alias gs='git status'
alias gp='git pull'
alias gp='git pull --prune'
alias gd='git diff'
alias gf='git fetch --all --prune'
alias gco='git checkout'
alias gcm='git commit -m'

alias dc='docker-compose'

# environment variables
export EDITOR=vim

export GOPATH=/Users/mcenac/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
