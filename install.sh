apt-get install git
apt-get install emacs
apt-get install vim
apt-get install gcc

cp bash/.mybashrc bash/.bashrc	~/
cp gitconf/.git*				~/

cp emacs/.myemacs emacs/.emacs	~/
cp -R vim/.vim* vim/.myvimrc	~/

cp -R emacs/usr_share/emacs/site-lisp /usr/share/emacs/site-lisp
cp -R emacs/usr_share/emacs/22.1/etc /usr/share/emacs/2*/etc
cp -R emacs/usr_share/emacs/22.1/leim /usr/share/emacs/2*/leim
cp -R emacs/usr_share/emacs/22.1/lisp /usr/share/emacs/2*/lisp

cp vim/usr_share/vim/vimrc /etc/vim/vimrc
