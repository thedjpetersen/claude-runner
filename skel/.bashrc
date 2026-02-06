# ~/.bashrc - Claude Runner

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend

# Window size
shopt -s checkwinsize

# Prompt
PS1='\[\033[01;32m\]\u@claude-runner\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias gd='git diff'
alias gl='git log --oneline -20'
alias k='kubectl'
alias kgp='kubectl get pods'
alias kga='kubectl get all'

# bat alias (Ubuntu names it batcat)
alias bat='batcat'

# fd alias (Ubuntu names it fdfind)
alias fd='fdfind'

# Go path
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Local bin
export PATH="$HOME/.local/bin:$PATH"
