

# base install

sudo apt-get install -y zsh;
sudo chsh -s $(which zsh)
chsh -s $(which zsh)

sudo apt-get install -y curl git;
curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh

# zsh highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting