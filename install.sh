stamp=$(date +'%Y%m%d-%H%M%S')
dot_bu=.dotfiles.orig
cd $HOME

[ -e $dot_bu ] || mkdir -p $dot_bu
[ -e .bash_login ]   && mv .bash_login   $dot_bu/${stamp}-bash_login
[ -e .bash_logout ]  && mv .bash_logout  $dot_bu/${stamp}-bash_logout
[ -e .bash_profile ] && mv .bash_profile $dot_bu/${stamp}-bash_profile
[ -e .bashrc ]       && mv .bashrc       $dot_bu/${stamp}-bashrc

cp .dotfiles/bashrc_new .bashrc
# Stop bash from looking for and reading .profile
touch .bash_profile
touch .bash_login

# .vimintro is volatile and local.  Ignore it
[ -L .vim ]   && rm -f .vim   || mv .vim     $dot_bu/${stamp}-vim
[ -e .vimrc ] && rm -f .vimrc || mv .viminfo $dot_bu/${stamp}-vimrc

ln -s $HOME/.dotfiles/.vimrc .vimrc
ln -s $HOME/.dotfiles/.vim .vim
