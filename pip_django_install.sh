# copyright by Lucifer
# 2022/JUL
#!/bin/bash

sudo apt install pip -yqq
pip install django
# check installation
python3 -m django --version

# python3 -m django startproject test_case