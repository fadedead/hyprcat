#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '



export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\w]\[$(tput sgr0)\]\[\033[38;5;14m\]-\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
