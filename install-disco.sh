#!/bin/bash
yum install openssh-server openssh-client openssl-devel -y
curl -O https://raw.githubusercontent.com/kerl/kerl/master/kerl
chmod a+x kerl
yum install tar gcc make perl ncurses-devel -y
./kerl build 17.5 17.5
./kerl install 17.5 erlang/17_5/
. /root/erlang/17_5/activate
erl -version
yum install git -y
git clone git://github.com/discoproject/disco.git
cd disco
make install-node
cd lib
python setup.py install --user
cd ..
bin/disco start
