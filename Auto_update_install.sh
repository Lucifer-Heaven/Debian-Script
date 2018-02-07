# copyright by Lucifer
# 2017/12/3
#!/bin/bash
apt-get remove vim*

apt-get update
apt-get install git
echo "install oh my zsh"
apt-get install zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "install tree"
apt-get install tree

echo "install lrzsz"
apt-get install lrzsz

apt-get install unzip
apt-get install sudo

echo '/bin/zsh' >> /etc/shells

echo "change zsh as default"
chsh -s /bin/zsh
