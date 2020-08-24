#!/bin/bash/
yum -y install make g++ gcc libpcre3 libpcrecpp* libpcre3-dev libssl-dev autoconf automake libtool libncurses5-dev libaio.dev ruby-dev rubygems
echo "vm.overcommit_memory=1">>/etc/sysctl.conf
yum -y install wget
wget http://download.redis.io/releases/redis-5.0.7.tar.gz
tar xzf redis-5.0.8.tar.gz -C /opt/rh/src
mv /opt/rh/src/redis-5.0.7 /opt/rh/src/redis
cd  /opt/rh/src/redis
make
mkdir -p /opt/rh/src/redis/{bin,conf}
mkdir -p /opt/rh/data/redis/{rum,logs,dbcache}
cp /opt/rh/src/redis/redis.conf /opt/rh/src/redis/conf/
cp /opt/rh/src/redis/src/redis-server /opt/rh/src/redis/bin/
cp /opt/rh/src/redis/src/redis-cli /opt/rh/src/redis/bin/
