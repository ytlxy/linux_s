#!/bin/bash
jdk_version="221"
if [ -f "/root/jdk-8u${jdk_version}-linux-x64.tar.gz" ];
then
if [ ! -d "/opt/java/jdk" ];
then
mkdir /opt/java
tar -zxvf jdk-8u${jdk_version}-linux-x64.tar.gz -C /opt/java
mv /opt/java/jdk1.8.0_${jdk_version} /opt/java/jdk
echo "
export JAVA_HOME=/opt/java/jdk
export JRE_HOME=/opt/java/jdk/jre
export CLASSPATH=.:/opt/java/jdk/lib:/opt/java/jdk/jre/lib
export PATH=/opt/java/jdk/bin:/opt/java/jdk/bin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
" >> /etc/profile
source /etc/profile
echo -e "\033[36m jdk ready! \033[0m \033[31m :) \033[0m not success run source /etc/profile"
else
echo -e "\033[31m jdk ok! \033[0m"
fi
else
echo -e "\033[31m jdk not ready! \033[0m"
fi
