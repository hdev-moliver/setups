ifup enp0s3
yum -y install git
cd ~
git clone
cd mo_setup
chmod +x setup.bash
./setup.bash

# Setup.bash
yum -y update
yum -y install wget rsync lsof gcc openssl-devel python-virtualenv
mkdir ~/.ssh
chmod -R 600 ~/.ssh
mkdir ~/installers


# Install Dev Tools
yum -y groupinstall "Development tools"
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel

# Install ncdu
yum -y install ncurses-devel
cd ~/installers
wget https://dev.yorhel.nl/download/ncdu-1.12.tar.gz
tar xzf ncdu-1.12.tar.gz
cd ncdu-1.12
./configure && make && make install

# Install and activate mlocate
yum -y install mlocate
updatedb

# Install Python 2.7.13 altinstall
yum -y install openssl-devel
mkdir ~/installers
cd ~/installers
wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
tar xzf Python-2.7.13.tgz
cd Python-2.7.13
./configure && make && make altinstall
