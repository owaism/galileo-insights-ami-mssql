#!/bin/sh

## Starting with Terraform Infrastructure setup

terraform init \
	-backend=true \
	-backend-config="bucket="$TF_VAR_backend_s3_bucket_name \
	-backend-config="region="$TF_VAR_aws_region \
	-backend-config="access_key="$TF_VAR_aws_access_key \
	-backend-config="secret_key="$TF_VAR_aws_secret_key \
	-backend-config="key=state.tf"


terraform apply -auto-approve 