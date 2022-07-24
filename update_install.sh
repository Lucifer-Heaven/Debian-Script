# copyright by Lucifer
# 2022/JUL
#!/bin/bash

sudo apt update -yqq
# apt-get remove vim* -y

echo "install vim git"
sudo apt install vim git -yqq

# sudo apt install net-tools unzip

# echo "install tree"
# sudo apt install tree -y
#
# echo "install lrzsz"
# sudo apt install lrzsz -y
#
# echo "install nginx"
# sudo apt install nginx -y

echo "install zsh then setup"
sudo apt install zsh -yqq
sudo bash -c 'echo "/bin/zsh" >> /etc/shells'

echo "change zsh as default with oh my zsh"
sudo chsh -s $(which zsh)
echo "install oh my zsh"
sudo sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo reboot
