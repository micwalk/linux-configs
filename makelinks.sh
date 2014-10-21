mkdir -p ~/.configs/.backup

mv ~/.emacs ~/.configs/.backup
ln -s ~/.configs/emacs ~/.emacs

mv ~/.bashrc ~/.configs/.backup
ln -s ~/.configs/bashrc ~/.bashrc
