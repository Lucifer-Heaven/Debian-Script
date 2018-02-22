# copyright by Lucifer
# 2017/12/3
#!/bin/bash

apt-get update -y
apt-get autoremove -y
apt-get remove vim* -y
# sometimes here's pre-installed tiny-vim,but the hot key is diff with normal vim

echo "install basic tool"
apt-get install vim sudo unzip tar -y

echo "install version control"
apt-get install mercurial  -y

echo "install oh my zsh"
apt-get install zsh -y
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "install tree"
apt-get install tree -y

echo "install lrzsz"
apt-get install lrzsz -y

echo '/bin/zsh' >> /etc/shells

<<<<<<< HEAD
echo "change zsh as default with oh my zsh"
chsh -s /bin/zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

reboot
=======
# it cant be done
#echo "change zsh as default"
#chsh -s "/bin/zsh"

>>>>>>> 7ca100ac14fc6bf1914cf937ffe4b8c314ef966d
