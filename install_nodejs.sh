# copyright by Lucifer
# 2022/Jul
#!/bin/bash

# todo needs test
sudo apt install nodejs npm

## if not working
## install current version
# Using Debian, as root
curl -fsSL https://deb.nodesource.com/setup_current.x | bash -
apt-get install -y nodejs

## optional building tool
# use `sudo` on Ubuntu or run this as root on debian
apt-get install -y build-essential