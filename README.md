# AWS DR Assesment

Prerequisites: 
===========
A shell script that utilizes "aws cli" needs to be in place to ensure the account in question is locked as fast as possible to prevent further damage, for that group called "locked" will be created and "AWSDenyAll" permission will be attached to it. All users will be added to that group, after what all users that have console access and programmatic access will get restricted. Using root account login new administrative account will be created for further DR tasks.

AWS Backup service configured by taking into consideration given RTO/RPO will suffice to restore data and services needed in this scenario.

Other things that can be kept in mind as Plan "B"
===================================
AMI and EBS
1. AMIs and EBS snapshots if not being shared already make sure they are shared between accounts.
2. Using terraform code instances can be launched using existing shared AMIs and EBS snapshots 
3. After instances launched new AMIs and EBS snapshots need to be created in the account-B   
Steps 1 and 3 can be performed using aws CLI

RDS
1. Snapshot can be created using Lambda, aws CLI on a regular basis and shared with account-B

S3 
1. MFA delete needs to be enabled to prevent unwanted deletions.
2. Data can be copied using aws CLI to another account in case of data transfer across accounts.

Terraform code tree structure:
==============================
The terraform code above is for disaster recovery of the AWS services. 
Planning is for DR of "account-A" in case it's compromised or destroyed. The ideal outcome will be if the services of the account in question initially have been created using terraform code. Otherwise, the advance account's terraform code version will need to be created which is represented in this terraform pseudocode.

Directories:
============
-> "live/" - is the main directory that contains a directory with a descriptive name for the account in our case it's called "account-A". There is a second directory "account-B" which will be used for the DR task.
-> "modules/" - the directory contains all resources that are available and exist in this account in a tree structure for the reusability of the code as a whole or individually as needed. For example files "main.tf, variables.tf, outputs.tf, terraform.tfvars" inside "live/a-account/" directory can be used to recreate the whole infrastructure using resources in "modules/" directory but by defining new variables, own names, settings, and configurations. This can be separated as much as needed. Can be divided by regions, by environment types such as prod or non-prod. The idea here is to have reusable infrastructure code using module feature by just pointing to the resource in .tf file.


DR procedure:
=============
Terraform resources recreation procedure. First copy all configuration files from "live/account-A" to "live/account-B" folder. 
Next step will be verification of the variables in main.tf and terraform.tfvars file. After that, the actual recover procedure in the following order. Permission to work through the steps can be either by programmatic access provided to terraform user or role assumption can be used:

1. security/iam
2. storage/s3
3. networking/vpc/nacl/security group
4. compute/ami/ec2/elastic-cache/ebs/alb/sqs/lambda 
5. database/rds/dynamo-db
6. security/waf/cloudtrail/guard-duty
7. monitoring/cloud-watch
8. ci-cd/code-deploy

Of course since this is a pseudocode values in it files and folders do not reprsent the actual infrastructure but as was mentioned above advance tests and configuration is critical.

