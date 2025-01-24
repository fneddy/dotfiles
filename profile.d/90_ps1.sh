PROMPT_COMMAND='PS1_CMD1=$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/")'; 


if [ -z "$container" ]; then
	PS1='\n\[\e[1m\]{$?}\n\[\e[0m\][\t \u@\H \w]\[\e[2m\]${PS1_CMD1}\[\e[0m\] \$ '
else
    PS1='\n\[\e[1m\]{$?}\n\[\e[0m\][\t \u@\H\[\e[2m\](container)\[\e[0m\] \w]\[\e[2m\]${PS1_CMD1}\[\e[0m\] \$ '
fi
