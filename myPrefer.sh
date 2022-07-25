# copyright by Lucifer
# 2022/Jul
#!/bin/bash

#vim config
echo "vim config"
alias vi='vim'
echo "download vim config"
cd ~
git clone https://github.com/altercation/vim-colors-solarized.git

cp ~/vim-colors-solarized/colors/ /.vim/
rm vim-colors-solarized

# oh-my-zsh
echo "copy personal oh-my-zsh config"
cp .zshrc ~/.zshrc
echo "install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "install zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting