#!/bin/bash

git config --get remote.origin.url | grep dotfiles >/dev/null
retval=$?

if (( $retval == 0 )); then
	repo_dir=$(pwd)
	stamp=$(date +'%Y%m%d-%H%M%S')
	dot_backup=$HOME/.backup/dotfiles-${stamp}

	cd $HOME
	[ -e $dot_backup ] || mkdir -p $dot_backup

	[ -e .bash_login ]   && mv .bash_login   $dot_backup/
	[ -e .bash_logout ]  && mv .bash_logout  $dot_backup/
	[ -e .bash_profile ] && mv .bash_profile $dot_backup/
	[ -e .bashrc ]       && mv .bashrc       $dot_backup/

	ln -s $repo_dir/bash/bashrc .bashrc
	ln -s $repo_dir/bash/bash_profile .bash_profile
	ln -s $repo_dir/bash/bash_logout .bash_logout

	[ -e .vimrc ]        && mv .vimrc     $dot_backup/
	ln -s $repo_dir/vim/vimrc .vimrc

	[ -d .vim/syntax ] || mkdir -p .vim/syntax
	cp $repo_dir/vim/syntax/*vim .vim/syntax
	[ -d .cache/vim ] || mkdir -p .cache/vim
else
	echo "you are in the wrong repo. cd into the dotfiles repo"
fi

