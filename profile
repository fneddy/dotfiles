for f in $HOME/.profile.d/* 
do
	source $f
done

tmux has-session -t eddy
if [ "$?" -eq "0" ] && [ -z "$TMUX" ] && [ "$TERM_PROGRAM" != "vscode" ] ; then
	tmux at -t eddy
fi
