# Jungle
Hadoop infrastructure setup on AWS and Dockerfiles.

Read [this](http://hadoop.apache.org/docs/r3.1.1/hadoop-project-dist/hadoop-common/ClusterSetup.html#Installation) for a
more detailed instruction on how to create a cluster. 

## Components

### NameNode
Part of the HDFS. Keeps track of where files are started on the distributed machines
and an index of all files.

[more](https://wiki.apache.org/hadoop/NameNode)

#### Alias
`namenode`

#### Ports
* 9000 (IPC for other components)
* 9870 (web interface)

## Run terraform
Make sure to have your AWS credentials setup e.g. with aws cli.

Then run:
```bash
terraform init
```

And then:
```bash
terraform apply
```
