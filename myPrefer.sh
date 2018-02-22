# copyright by Lucifer
# 2018/2/21
#!/bin/bash

#vim config
echo "download vim config"
cd ~
git clone https://github.com/altercation/vim-colors-solarized.git

cp ~/vim-colors-solarized/colors/ /.vim/
rm vim-colors-solarized
