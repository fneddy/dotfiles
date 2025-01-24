#!/usr/bin/env bash

srcdir=$(pwd)
cd $HOME

function check_backup_update {
	newfile=$1
	target=$2

	if cmp --silent -- $newfile $target; then
		echo " > $newfile already done"	
		return
	fi

	echo " > $newfile"
	if [ -f "$newfile" ] || [ -d "$newfile" ]; then
		mv "$newfile" "$newfile.old"
		echo " > $newfile > $newfile.old"
	fi

	if [ ! -f "$target" ] && [ ! -d "$target" ]; then
		echo "$target does not exist"
	fi

	ln -s "$target" "$newfile"
	echo " $target -> $newfile"
}


check_backup_update ".bashrc" "$srcdir/bashrc"
check_backup_update ".blerc" "$srcdir/blerc"
check_backup_update ".gitaliases" "$srcdir/gitaliases"
check_backup_update ".gitconfig" "$srcdir/gitconfig"
check_backup_update ".gitignore" "$srcdir/gitignore"
check_backup_update ".gitmessage" "$srcdir/gitmessage"
check_backup_update ".profile.d" "$srcdir/profile.d"
check_backup_update ".profile" "$srcdir/profile"
check_backup_update ".ssh" "$srcdir/ssh"
check_backup_update ".tmux.conf" "$srcdir/tmux.conf"
check_backup_update ".vimrc" "$srcdir/vimrc"
