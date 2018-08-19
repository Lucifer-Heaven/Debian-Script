# from https://about.gitlab.com/installation/#debian 
# 2018/8/18
sudo apt-get update
sudo apt-get install -y curl openssh-server ca-certificates

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash

sudo EXTERNAL_URL="http://192.168.0.4/gitlab" apt-get install gitlab-ee
# enable https
# https://docs.gitlab.com/omnibus/settings/nginx.html#enable-https
