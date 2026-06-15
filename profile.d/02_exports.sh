PROMPT_COMMAND='PS1_CMD1=$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/")';

if [ -z "$container" ]; then
	export PS1='\n\[\e[1m\]{$?}\n\[\e[0m\][\t \u@\H \w]\[\e[2m\]${PS1_CMD1}\[\e[0m\] \$ '
else
	export PS1='\n\[\e[1m\]{$?}\n\[\e[0m\][\t \u@\H\[\e[2m\](container)\[\e[0m\] \w]\[\e[2m\]${PS1_CMD1}\[\e[0m\] \$ '
fi

# variables from parrent shell
#export NIRI_SOCKET="${NIRI_SOCKET:=''}"
#export SSH_AUTH_SOCK="${SSH_AUTH_SOCK:=''}"
#export SSH_AGENT_PID="${SSH_AGENT_PID:=''}"
#export SSH_ASKPASS="${SSH_ASKPASS:=''}"
#export SSH_CONNECTION="${SSH_CONNECTION:=''}"
#export ELECTRON_OZONE_PLATFORM_HINT="${ELECTRON_OZONE_PLATFORM_HINT:=''}"
#export WAYLAND_DISPLAY="${WAYLAND_DISPLAY:=''}"
#export XDG_SESSION_TYPE="${XDG_SESSION_TYPE:=''}"
#export XDG_SESSION_DESKTOP="${XDG_SESSION_DESKTOP:=''}"
#export GPG_TTY="${GPG_TTY:=''}"
#export XDG_CURRENT_DESKTOP="${XDG_CURRENT_DESKTOP:=''}"
# update_env

# history
shopt -s histappend
export HISTFILE="$HOME/.bash_history"
export HISTFILESIZE=-1
export HISTSIZE=-1

export GROFF_NO_SGR=1
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export LESS="--use-color -RX"
export REGISTRY_AUTH_FILE="$HOME/.podman-auth.json"
export PATH="$HOME/.local/bin:$HOME/.local/share/flutter/bin:$HOME/.cargo/bin/:$PATH:$HOME/.opencode/bin:$HOME/.bun/bin:$PATH"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/usr/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"
export QT_QPA_PLATFORMTHEME=qt5ct
export ELECTRON_OZONE_PLATFORM_HINT="wayland"

# nix
if [ -e $HOME/.nix-profile/etc/profile.d ]; then
    for f in $HOME/.nix-profile/etc/profile.d/*.sh
    do
        source $f
    done
    export XDG_DATA_DIRS="$HOME/.nix-profile/share:$XDG_DATA_DIRS"
fi

# rust
if [ -f /.cargo/env ]; then
    source "$HOME/.cargo/env"
fi

# ble
if [ -f  $HOME/src/ble.sh/out/ble.sh ]; then
	source $HOME/src/ble.sh/out/ble.sh
fi

