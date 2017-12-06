#!/bin/bash

apt-get install git
apt-get install emacs-nox
apt-get install vim
apt-get install gcc
apt-get install g++

# ------------------ vars ---------------
rc=".bashrc"
myrc=".mybashrc"

trucs="\nif [[ -f ~/$myrc ]]; then\n  source ~/$myrc\nfi\n\nUSER='mde-jesu'\nexport USER\nMAIL=\"\$USER@student.42.fr\"\nexport MAIL\n"

trucsvim="\nif filereadable(\"$HOME/.vimrc\")\n  source $HOME/.vimrc\nendif\n"
# --------------------------------------

#echo de $truc dans rc
echo -e $trucs >> ~/$rc

#liens symbolique pour myrc
ln -sf ~/conf/bash/$myrc ~/$myrc

#liens symbolique de .gitconfig et .gitignore_global
ln -sf ~/conf/gitconf/.gitconfig ~/.gitconfig
ln -sf ~/conf/gitconf/.gitignore_global ~/.gitignore_global

#echo du source vimrc dans vimrc
echo -e $trucsvim >> /etc/vim/vimrc

#liens symbolique de vimrc et myvimrc
ln -sf ~/conf/vim/vimrc ~/.vimrc
ln -sf ~/conf/vim/.myvimrc ~/.myvimrc
