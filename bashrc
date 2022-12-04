# ~/.bashrc: executed by bash(1) for non-login shells.

# Return if not running interactively.
case $- in
    *i*) ;;
      *) return;;
esac

DOT_FILES=$HOME/.dotfiles/bash/startup

for f in $(ls $DOT_FILES); do
	if ! [[  $f =~ "off" ]]; then
		. $DOT_FILES/$f
	fi
done

unset f

