update_env() {
	eval $(tmux show-environment -s 2>/dev/null | grep -v '^-')
}

alias pdrun='podman run -v$PWD:$PWD:z -v$HOME/.bash_history:/root/.bash_history:z -v$HOME/.profile:/root/.profile:z -v$HOME/.profile.d/:/root/.profile.d/:z -v$HOME/.bashrc:/root/.bashrc:z'
alias bobcon='podman run --platform linux/amd64 -v$HOME/.cache:/root/.cache:z -v$PWD:$PWD -w $PWD --net host -v$HOME/.cargo:/cargo:ro -v$HOME/.bob:/root/.bob:z -v$HOME/.bob:$HOME/.bob:z  -v$HOME/.mempalace:/root/.mempalace:z -v$HOME/.mempalace:$HOME/.mempalace:z -e BOBSHELL_API_KEY=$BOBSHELL_API_KEY  --rm  -it localhost/bobshell bash'
#alias open='xdg-open'
alias ls='ls --color=auto'
