# README.md
# Initial cent7 minimial setup

ifup enp0s3
yum -y install git
cd ~
git clone git@github.com:hdev-moliver/setups.git
cd setups
chmod +x linuxSetup.bash
./linuxSetup.bash