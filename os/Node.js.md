yum -y install gcc gcc-c++ openssl-devel

wget https://nodejs.org/dist/v8.9.4/node-v8.9.4.tar.gz

tar -zxvf node-v8.9.4.tar.gz

cd node-v8.9.4

./configure --prefix=/usr/local/node/8.9.4

make && make install

vim /etc/profile

# set for nodejs
export NODE_HOME=/usr/local/node/8.9.4
export PATH=$NODE_HOME/bin:$PATH

source /etc/profile

node -v