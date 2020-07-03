# assesment_task
AWS DR Pseudocode by Terraform 

This is terraform code for disaster recovery of the AWS services. 
Planning is for DR of "account-A" in case it's compromised or destroyed. The ideal outcome will be if the services of the account in question initially have been created using terraform code. Otherwise, the advance account's terraform code version will need to be created which is represented in this terraform pseudocode.

Directories:
============
-> "live/" - is the main directory that contains a directory with a descriptive name for the account in our case it's called "account-A". There is a second directory "account-B" which will be used for the DR task.
-> "modules/" - the directory contains all resources that are available and exist in this account in a tree structure for the reusability of the code as a whole or individually as needed. For example files "main.tf, variables.tf, outputs.tf, terraform.tfvars" inside "live/a-account/" directory can be used to recreate the whole infrastructure using resources in "modules/" directory but by defining new variables, own names, settings, and configurations. This can be separated as much as needed. Can be divided by regions, by environment types such as prod or non-prod. The idea here is to have reusable infrastructure code using module feature by just pointing to the resource in .tf file.

DR procedure:
=============
When the times come to DR of account-A to account-B, first you will need to copy all configuration files from "live/account-A" to "live/account-B" folder. 
Next step will be verification of the variables in main.tf and terraform.tfvars file. After that, the actual recover procedure in the following order:

1. security/iam
2. storage/s3
3. networking/vpc/nacl/security group
4. compute/ami/ec2/elastic-cache/ebs/alb/sqs/lambda 
5. database/rds/dynamo-db
6. security/waf/cloudtrail/guard-duty
7. monitoring/cloud-watch
8. ci-cd/code-deploy


