########### Following variables are setup using the Host machines Environment Variables ##############


## Environment Variable: TF_VAR_backend_s3_bucket_name
variable "aws_terraform_bucket" {
  description = "S3 bucket name where Terraform info is stored"
  default = "ami-terraform"
}

## Environment Variable: TF_VAR_aws_access_key
variable "aws_access_key" {
  description = "AWS access key"
}

## Environment Variable: TF_VAR_aws_secret_key
variable "aws_secret_key" {
  description = "AWS secret key"
}

## Environment Variable: TF_VAR_aws_region
variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-2"
}


# ID of the VPC  to be working with
variable "vpc_id" {
  description = "The vpc to work with"
  default     = "vpc-e68f8f8e"
}


variable "rds_launch_security_group_id" {
  description = "Security Group to launch RDS instance in"
  default = "sg-04b10a25267343f68"
}

variable "db_password" {
  description = "Password of the RDS instance"
}