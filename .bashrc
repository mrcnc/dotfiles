# prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\[\e[1;32m\]\u@\h\[\e[1;34m\] \w\[\e[0m\]\$(parse_git_branch)\[\e[1;34m\] \n$\[\e[0m\] "

# aliases
alias ls='ls -hG'
alias ll='ls -al'
alias h='history'
alias grep='grep --color=auto'
alias gs='git status'
alias gp='git pull --prune'
alias gd='git diff'
alias gf='git fetch --all --prune'
alias gb='git branch'
alias gco='git checkout'
alias gcm='git commit -m'
alias dc='docker-compose'

# environment variables
export EDITOR=vim
