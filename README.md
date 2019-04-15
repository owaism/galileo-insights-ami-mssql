## Duplicate MS SQL DB for AMI

### Pre Requisite

You will need to have terraform v0.11 installed on your machine. If you are using mac, then you can easily install using homebrew as follows

```
brew install terraform
```

### How to Play

#### Setup environment variables

1. Duplicate file [sample_setup.renametosh](./sample_setup.renametosh) and rename it as setup.sh
2. Setup values of the variables correctly in setup.sh, especially for `TF_VAR_aws_access_key`, `TF_VAR_aws_secret_key` and `TF_VAR_db_password`. Changing the `TF_VAR_db_password` will modify the existing database (if the DB has already been created using Terraform)
3. Source the setup.sh file to set the environment variables
	```
	source setup.sh
	```

#### Executing the scripts

Execute the [deploy.sh](./deploy.sh) file
	```
	./deploy.sh
	```