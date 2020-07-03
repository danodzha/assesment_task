# Global variables, for example:
aws_region   = "us-east-1"
project_name = "assesment-task"
vpc_cidr     = "10.123.0.0/16"
public_cidrs = [
  "10.123.1.0/24",
  "10.123.2.0/24"
]
accessip    = "0.0.0.0/0"
key_name = "terraform_key"
public_key_path = "/path/to/the/key/id_rsa.pub"
server_instance_type = "t2.micro"