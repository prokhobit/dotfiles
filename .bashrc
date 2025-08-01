###==============================###
###------BASH CONFIGURATION------###
###==============================###

###------Editors------###
export EDITOR="nvim"
export VISUAL="nvim"


###------Prompt Colors------### 
export PS1='\[\e[0;32m\]\u@\h:\w\$ \[\e[0m\]'
shopt -s histappend

###------FZF------### 
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

###------Aliases------### 
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias vim='nvim'



