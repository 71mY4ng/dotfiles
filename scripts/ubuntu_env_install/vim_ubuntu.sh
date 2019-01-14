sudo apt-get install vim git -y

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# fetch your configuration to ~/.vimrc

vim +PluginInstall +qall