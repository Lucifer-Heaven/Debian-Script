# 2018/08/18
# https://cockpit-project.org/running#debian
echo 'deb http://deb.debian.org/debian stretch-backports main' > \
 /etc/apt/sources.list.d/backports.list
apt-get update

sudo apt-get install cockpit
