repo_dir=$(pwd)
stamp=$(date +'%Y%m%d-%H%M%S')
dot_bu=$HOME/.backup/dotfiles-${stamp}
cd $HOME

[ -e $dot_bu ] || mkdir -p $dot_bu

[ -e .bash_login ]   && mv .bash_login   $dot_bu/
[ -e .bash_logout ]  && mv .bash_logout  $dot_bu/
[ -e .bash_profile ] && mv .bash_profile $dot_bu/
[ -e .bashrc ]       && mv .bashrc       $dot_bu/
[ -e .vimrc ]        && mv -f .vimrc     $dot_bu/
[ -L .vim ]          && mv .vim          $dot_bu/

mv $repo_dir $HOME/.dotfiles
ln -s $HOME/.dotfiles/.vimrc .vimrc
ln -s $HOME/.dotfiles/.vim .vim

cd $HOME/.dotfiles
cp bash_profile_new $HOME/.bash_profile
cp bashrc_new $HOME/.bashrc
cp bash_logout_new $HOME/.bash_logout
