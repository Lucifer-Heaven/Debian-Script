# copyright by Lucifer
# 2022/JUL
#!/bin/bash

sudo apt update -yqq
# apt-get remove vim* -y

echo "install vim git"
sudo apt-get install vim git -yqq

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
sudo chsh -s /bin/zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

reboot
