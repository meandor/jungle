FROM ubuntu:bionic
RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install openjdk-8-jdk-headless openssh-server && apt-get -y autoclean
RUN wget http://apache.mirror.anlx.net/hadoop/common/hadoop-3.1.1/hadoop-3.1.1.tar.gz -P /opt/  && tar xvf hadoop-3.1.1.tar.gz
RUN useradd -ms /bin/bash hadoop
ENV PATH="${PATH}:/opt/hadoop-3.1.1/bin"
ENV HDFS_DATANODE_USER="hadoop"
ENV HDFS_SECONDARYNAMENODE_USER="hadoop"
ENV YARN_RESOURCEMANAGER_USER="hadoop"
ENV YARN_NODEMANAGER_USER="hadoop"
ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
RUN mkdir -p /usr/local/hadoop/hdfs/data && chown -R hadoop:hadoop /usr/local/hadoop/hdfs/data
COPY core-site.xml /opt/hadoop-3.1.1/etc/hadoop/core-site.xml
COPY id_rsa /home/hadoop/.ssh/id_rsa
COPY id_rsa.pub /home/hadoop/.ssh/id_rsa.pub
COPY authorized_keys /home/hadoop/.ssh/authorized_keys
USER hadoop
