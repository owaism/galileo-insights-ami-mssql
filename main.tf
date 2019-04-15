
terraform {
  # All the properties are put in using the properties passed during terraform init
  backend "s3" {}
}

provider "aws" {
  region = "${var.aws_region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

##############################################################
# Data sources to get VPC, subnets and security group details
##############################################################
data "aws_vpc" "selected" {
  id = "${var.vpc_id}"
}

data "aws_subnet_ids" "all" {
  vpc_id = "${data.aws_vpc.selected.id}"
}

data "aws_security_group" "rds_security_group" {
  vpc_id = "${data.aws_vpc.selected.id}"
  id   = "${var.rds_launch_security_group_id}"
}

#####
# DB
#####


resource "aws_db_instance" "ami_instance_two" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.23"
  instance_class       = "db.t2.micro"
  name                 = "amiifdev2"
  identifier           = "ami-if-dev-2"
  username             = "ami_admin"
  password             = "${var.db_password}"
  option_group_name    = "default:mysql-5-7"
  parameter_group_name = "default.mysql5.7"
  backup_retention_period = 7
  deletion_protection = true
  final_snapshot_identifier="AMIInstanceTwoFinal"

  #Not a good practice to expose publicly. But this is a replica of another DB
  publicly_accessible = true

  #t2.micro does not support encryption
  storage_encrypted = false
  db_subnet_group_name = "default"
  vpc_security_group_ids = ["${data.aws_security_group.rds_security_group.id}"]
}
