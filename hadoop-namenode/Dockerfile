FROM meandor/hadoop-base
COPY *.xml /opt/hadoop-3.1.1/etc/hadoop/
RUN mkdir -p /home/hadoop/data
RUN $HADOOP_HOME/bin/hdfs namenode -format boomtube
ENTRYPOINT ["/opt/hadoop-3.1.1/bin/hdfs", "namenode"]