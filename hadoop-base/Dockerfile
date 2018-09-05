FROM ubuntu:bionic
RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install openjdk-8-jdk-headless openssh-server openssh-client && apt-get -y autoclean
RUN wget http://apache.mirror.anlx.net/hadoop/common/hadoop-3.1.1/hadoop-3.1.1.tar.gz -P /opt/ && \
    tar xvf /opt/hadoop-3.1.1.tar.gz -C /opt/ && \
    rm -rf /opt/hadoop-3.1.1.tar.gz
RUN useradd -ms /bin/bash hadoop
ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64" PATH="${PATH}:${JAVA_HOME}/bin:/opt/hadoop-3.1.1/bin"
ENV HDFS_DATANODE_USER="hadoop" HDFS_SECONDARYNAMENODE_USER="hadoop" YARN_RESOURCEMANAGER_USER="hadoop" YARN_NODEMANAGER_USER="hadoop"
RUN mkdir -p /usr/local/hadoop/hdfs/data && chown -R hadoop:hadoop /usr/local/hadoop/hdfs/data
COPY core-site.xml /opt/hadoop-3.1.1/etc/hadoop/core-site.xml
COPY id_rsa /home/hadoop/.ssh/id_rsa
COPY id_rsa.pub /home/hadoop/.ssh/id_rsa.pub
COPY authorized_keys /home/hadoop/.ssh/authorized_keys
RUN service ssh start
USER hadoop
