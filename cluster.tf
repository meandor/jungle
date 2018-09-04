provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "master" {
  ami = "ami-0cf608f01e8be3a35"
  instance_type = "t2.micro"
}

resource "aws_instance" "worker1" {
  ami = "ami-0cf608f01e8be3a35"
  instance_type = "t2.micro"
}

resource "aws_instance" "worker2" {
  ami = "ami-0cf608f01e8be3a35"
  instance_type = "t2.micro"
}

resource "aws_instance" "worker3" {
  ami = "ami-0cf608f01e8be3a35"
  instance_type = "t2.micro"
}