#!/bin/bash

# ------------------ vars ---------------
trucs="\nif [[ -f ~/$myrc ]]; then\n  source ~/.$myrc\nfi\n\nUSER='mde-jesu'\nexport USER\nMAIL=\"\$USER@student.42.fr\"\nexport MAIL\n"

trucsvim="\nif filereadable(\"$HOME/.vimrc\")\n  source $HOME/.vimrc\nendif\n"

rc=".zshrc"
myrc=".myzshrc"

# --------------------------------------

#echo de $truc dans rc
#echo -e $trucs >> ~/$rc

#liens symbolique pour myrc
ln -s ~/conf/zsh/$myrc ~/$myrc

#liens symbolique de .gitconfig et .gitignore_global
ln -s ~/conf/gitconf/.gitconfig ~/.gitconfig
ln -s ~/conf/gitconf/.gitignore_global ~/.gitignore_global

#echo du source vimrc dans vimrc
#echo -e $trucsvim >> /etc/vim/vimrc

#liens symbolique de vimrc et myvimrc
#ln -s ~/conf/vim/vimrc ~/.vimrc
ln -s ~/conf/vim/myvimrc_42 ~/.myvimrc
