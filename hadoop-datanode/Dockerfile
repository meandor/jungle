FROM meandor/hadoop-base
COPY hdfs-site.xml /opt/hadoop-3.1.1/etc/hadoop/
RUN mkdir -p /home/hadoop/data
ENTRYPOINT ["/opt/hadoop-3.1.1/bin/hdfs", "datanode"]