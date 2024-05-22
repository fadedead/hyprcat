#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Add custom aliases
alias vim="nvim"
alias nixcon="nvim ~/nixconfig/"
alias nvcon="nvim ~/dotfiles/.config/nvim"
alias dotcon="nvim ~/dotfiles"
alias uj8="sudo archlinux-java set java-8-openjdk"
alias uj17="sudo archlinux-java set java-17-openjdk"
alias gitstpush="git subtree push --prefix dist origin gh-pages"
alias configu="home-manager switch --flake ~/nixconfig --impure"
alias systemu="sudo nixos-rebuild switch --flake ~/nixconfig"
sf() {
    cd "$(dirname "$(fd --type file | fzf)")"
}

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)';

PS1='\[\033[38;5;15m\][\w]\[\033[0m\] ${PS1_CMD1}\n\[\033[38;5;15m\]->\[\033[0m\] '
export JAVA_HOME=/usr/lib/jvm/default
