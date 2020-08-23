#!/bin/bash
cd /opt
mkdir /opt/java
cd
tar -zxvf jdk-8u221-linux-x64.tar.gz
mv jdk1.8.0_221 /opt/java
cd /opt/java
mv jdk1.8.0_221 jdk
cd
echo "export JAVA_HOME=/opt/java/jdk
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH" >> /etc/profile
source /etc/profile
