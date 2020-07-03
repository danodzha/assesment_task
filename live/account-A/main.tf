module "storage" {
  source = "../../modules/storage/s3"
  bucket_name = va.bucket_name
}

##-- Same as above need to be configured for the below to be used as a module --##
# ../../modules/ci-cd/code-deploy
# ../../modules/networking/security-group
# ../../modules/networking/vpc
# ../../modules/networking/nacl
# ../../modules/compute/sqs
# ../../modules/compute/lambda
# ../../modules/compute/elastic-cache
# ../../modules/compute/ebs
# ../../modules/compute/ec2
# ../../modules/compute/ami
# ../../modules/compute/alb
# ../../modules/security/cloudtrail
# ../../modules/security/waf
# ../../modules/security/iam
# ../../modules/security/guard-duty
# ../../modules/database/dynamo-db
# ../../modules/database/rds
# ../../modules/monitoring-logging/cloudwatch
