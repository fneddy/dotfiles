blepath=("$HOME/workspace/ble.sh/out/ble.sh" "$HOME/Projects/ble.sh/out/ble.sh")


for path in ${blepath[@]}; do
	if [ -f "$path" ]; then
		source "$path" --noattach	
	fi
done

