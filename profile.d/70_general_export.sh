shopt -s histappend
export PROMPT_COMMAND="history -a"
export HISTFILE="$HOME/.bash_history"
export HISTFILESIZE=-1
export HISTSIZE=-1
alias ls='ls --color'
export GROFF_NO_SGR=1
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#export LESS="--use-color -RX"
alias open='xdg-open'
export REGISTRY_AUTH_FILE="$HOME/.podman-auth.json"

