# copyright by Lucifer
# 2017/12/3
#!/bin/bash

apt-get update -y
apt-get autoremove -y
apt-get remove vim* -y
# sometimes here's pre-installed tidy-vi,but the hot key is diff with normal vim

echo "install basic tool"
apt-get install vim sudo unzip tar -y

echo "install version control"
apt-get install git mercurial  -y

echo "install oh my zsh"
apt-get install zsh -y
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "install tree"
apt-get install tree -y

echo "install lrzsz"
apt-get install lrzsz -y

echo '/bin/zsh' >> /etc/shells

echo "change zsh as default"
chsh -s /bin/zsh
