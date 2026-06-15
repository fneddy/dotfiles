
for f in $HOME/.profile.d/*.sh
do
	source $f
done

tmux has-session -t eddy 2>/dev/null
if [ "$?" -eq "0" ] && [ -z "$TMUX" ] && [ "$TERM_PROGRAM" != "vscode" ] ; then
	tmux at -t eddy
fi
