# copyright by Lucifer
# 2017/12/3
#!/bin/bash

apt-get update -y
apt-get autoremove -y
#apt-get remove vim* -y
# sometimes here's pre-installed tiny-vim,but the hot key is diff with normal vim

echo "install basic tool"
apt-get install sudo unzip tar -y

#echo "install version control"
#apt-get install mercurial  -y


echo "install tree"
apt-get install tree -y

echo "install lrzsz"
apt-get install lrzsz -y


echo "install zsh then setup"
apt-get install zsh
echo '/bin/zsh' >> /etc/shells

echo "change zsh as default with oh my zsh"
chsh -s /bin/zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

reboot
