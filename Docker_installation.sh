# from https://docs.docker.com/install/linux/docker-ce/debian/
sudo apt-get remove docker docker-engine docker.io -y 
echo "remove done!"

sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
echo "install fundamental!"

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
echo "done repo stuff!"

sudo apt-get install docker-ce -y
echo "try it!"

sudo docker run hello-world
echo "done!"
