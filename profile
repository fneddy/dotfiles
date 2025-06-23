for f in $HOME/.profile.d/* 
do
	source $f
done

if [ -e /home/eddy/.nix-profile/etc/profile.d/nix.sh ]; then . /home/eddy/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
