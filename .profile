# prompt
PS1="\[\033[0;94m\][\u@\h \w]\[\033[0m\]\n$ "

# aliases
alias ls='ls -hG'
alias ll='ls -al'
alias h='history'
alias grep='grep --color=auto'
alias gs='git status'
alias ga='git add'
alias gl='git log'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff --cached'

# for rbenv
eval "$(rbenv init -)"

# for git autocompletion
source ~/git-completion.bash

