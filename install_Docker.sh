# 2022/Nov
# https://docs.docker.com/engine/install/debian/
echo "remove remaining"
sudo apt-get remove docker docker-engine docker.io containerd runc

echo "install dependence"
sudo apt-get update -yqq
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -yqq

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "install docker now"
sudo apt-get update -yqq
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -yqq

echo "enable daemon"
sudo systemctl enable --now docker

# non-root mode
# https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
echo "add current user to docker group"
sudo groupadd docker
sudo usermod -aG docker $USER
# active changes to group
newgrp docker
