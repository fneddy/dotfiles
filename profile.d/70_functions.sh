addhost_function()
{
    if [ "$#" -lt 2 ]; then
      echo "Usage: addhost <machinename> <ip>"
      return 1
    fi

    SSHCFG=${HOME}/.ssh/config
    HOSTNAME=${1}
    IP=${2}
    echo "" >> $SSHCFG
    echo "Host ${1}" >> $SSHCFG
    echo "    HostName ${2}" >> $SSHCFG
    echo "    User hmcmanager" >> $SSHCFG
}
alias addhost=addhost_function


pushkey_function()
{
	sshpass -f $HOME/.ssh/pw ssh-copy-id -o StrictHostKeyChecking=no ${1}
}
alias pushkey=pushkey_function


alias pdrun='podman run -v$PWD:$PWD:z -v$HOME/.bash_history:/root/.bash_history:z -v$HOME/.profile:/root/.profile:z -v$HOME/.profile.d/:/root/.profile.d/:z -v$HOME/.bashrc:/root/.bashrc:z'

update_env() {
	eval $(tmux show-environment -s | grep -v '^-')
}

