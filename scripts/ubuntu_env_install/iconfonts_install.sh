# powerline fonts

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cp fontconfig/* ~/.config/fontconfig/conf.d/
cd ..
rm -rf fonts
fc-cache -vf