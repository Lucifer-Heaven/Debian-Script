# from https://docs.docker.com/install/linux/docker-ce/debian/
sudo apt-get remove docker docker-engine docker.io -y
echo "remove done!"

sudo apt update

sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common -yqq
echo "install essential"

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -yqq

echo "enable daemon"
sudo systemctl enable --now docker

echo "install docker-compose"

sudo apt install curl wget -yqq
curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url  | grep docker-compose-linux-x86_64 | cut -d '"' -f 4 | wget -qi -
chmod +x docker-compose-linux-x86_64
sudo mv docker-compose-linux-x86_64 /usr/local/bin/docker-compose
rm docker*

echo "add current user to docker group"
sudo usermod -aG docker $USER
newgrp docker
