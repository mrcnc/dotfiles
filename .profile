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

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
PS1="\[\e[1;32m\]\u@\h\[\e[1;34m\] \w\[\e[0m\]\$(__git_ps1)\[\e[1;34m\] \n$\[\e[0m\] "

# for rbenv
eval "$(rbenv init -)"
