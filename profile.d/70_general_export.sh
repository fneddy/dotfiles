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
export NIRI_SOCKET="${NIRI_SOCKET:=''}"
export SSH_AUTH_SOCK="${SSH_AUTH_SOCK:=''}"
export SSH_AGENT_PID="${SSH_AGENT_PID:=''}"
export SSH_ASKPASS="${SSH_ASKPASS:=''}"
export SSH_CONNECTION="${SSH_CONNECTION:=''}"
export ELECTRON_OZONE_PLATFORM_HINT="${ELECTRON_OZONE_PLATFORM_HINT:=''}"
export WAYLAND_DISPLAY="${WAYLAND_DISPLAY:=''}"
export XDG_SESSION_TYPE="${XDG_SESSION_TYPE:=''}"
export XDG_SESSION_DESKTOP="${XDG_SESSION_DESKTOP:=''}"
export GPG_TTY="${GPG_TTY:=''}"
export XDG_CURRENT_DESKTOP="${XDG_CURRENT_DESKTOP:=''}"

