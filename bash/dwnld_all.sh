
#!/bin/bash

echo "script run"

echo "install python"
sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev
wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz
tar -xf Python-3.9.6.tgz
cd Python-3.9.6
./configure --enable-optimizations
make -j 2
sudo make altinstall
python3.9 --version
echo "python done!"

echo "install htop"
sudo apt install htop
echo "htop done!"

echo "install vim"
sudo apt install vim
echo "vim done!"
 