provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "./vpc"
}

module "ec2_instance" {
  source = "./ec2_instance"
  instance_type = var.instance_type
  ebs_size = var.ebs_size
}