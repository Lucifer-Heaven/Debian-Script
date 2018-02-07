# copyright by Lucifer
# 2017/12/3
#!/bin/bash
apt-get remove vim* -y

apt-get update -y
apt-get install git -y
echo "install oh my zsh"
apt-get install zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "install tree"
apt-get install tree -y

echo "install lrzsz"
apt-get install lrzsz -y

apt-get install unzip -y
apt-get install sudo -y

echo '/bin/zsh' >> /etc/shells

echo "change zsh as default"
chsh -s /bin/zsh
