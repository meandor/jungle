# Jungle
Hadoop infrastructure setup on AWS. This will setup 4 ec2 instances with terraform.

One will be the master, the other will be worker nodes connected to the master.

## Run
Make sure to have your AWS credentials setup e.g. with aws cli.

Then run:
```bash
terraform init
```

And then:
```bash
terraform apply
```

This should have provisioned 4 ec2 instances.
