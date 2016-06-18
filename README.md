All-in-one installation script to install disco on a clean CentOS 7 VM

# How to use
1. Log in as root (required)
2. Run this stuff
```
curl -O https://raw.githubusercontent.com/ARMmaster17/install-disco/master/install-disco.sh
chmod a+x install-disco.sh
./install-disco.sh
```
DONE!

# Advanced options
This script by default installs Erlang, Python, and of course Disco. When it installs Disco, it uses the "node-install" option. This assumes that you already have a "master" node already running on your network. To install a master node, change the line `make node-install` to `make install`.

# Disclaimer
I am in no way affiliated with the makers of Disco. This repo only exists because I was too lazy to make an NFS share for my personal cluster. Use on your own machines at your own risk!
