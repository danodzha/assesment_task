vpc-resource = {
  # VPC-01   
  "F5-vpc-01" = {
    "vpc-tag-name"                     = "F5-vpc-01"
    "vpc-cidr-block"                   = "10.1.0.0/16"
    "enable_dns_hostnames"             = "true"
    "enable_dns_support"               = "true"
    "instance_tenancy"                 = "default"
    "assign_generated_ipv6_cidr_block" = "false"
    "enable_classiclink"               = "false"
    "enable_classiclink_dns_support"   = "false"
    # IGW
    "vpc-igw" = "F5-vpc-01-igw"
    # Subnets
    "private-subnets" = [
      "subnet-dmz-a",
      "subnet-dmz-b",
      "subnet-app-a",
      "subnet-app-b",
      "subnet-ddb-a",
      "subnet-ddb-b",
      "subnet-sec-a",
      "subnet-sec-b",
      "subnet-vdi-a",
      "subnet-vdi-b"
    ]
    # Route Tables and Subnet associations
    "routes" = {
      "app-a-rtb"      = ["subnet-app-a", "subnet-app-b", "subnet-sec-b", "subnet-ddb-a", "subnet-vdi-a"]
      "app-b-rtb"      = ["subnet-vdi-b"]
      "rds-a-rtb"      = ["subnet-ddb-b", "subnet-sec-a"]
      "rds-b-rtb"      = []
      "www-ab-rtb"     = ["subnet-dmz-a", "subnet-dmz-b"]
      "default-f5-rtb" = []
      "vpn-f5-rtb"     = []
      "tls-test-rtb"   = []
    }
    //////////////////////
    # -  NAT Gateways  - #
    ////////////////////// 
    "nat-gws" = {
      "F5-AZ-a-nat-gw" = {
        "in-subnet" = "subnet-dmz-a"
      }
      "F5-AZ-b-nat-gw" = {
        "in-subnet" = "subnet-dmz-b"
      }
    }
    # - Gateway Endpoints and Route Table associations - #
    "vpc-gw-endpoints" = {
      "s3-endpoint-F5-vpc-01" = ["app-a-rtb", "app-b-rtb", "rds-a-rtb", "rds-b-rtb", "www-ab-rtb"]
    }
    //////////////////////
    # -       VPN      - #
    //////////////////////   
    # - Virtual Private Gateway - #
    "virtual-private-gws" = {
      "F5-Ohio" = {
        "ASN"               = "7224"
        "propagated-routes" = ["app-a-rtb", "app-b-rtb", "rds-a-rtb", "rds-b-rtb", "www-ab-rtb", "default-f5-rtb", "tls-test-rtb"]
      }
    }
    "customer-gw" = {
      "f5a_PHX" = "66.210.253.65"
      "F5Ax1"   = "50.203.189.114"
      "F5Ax3"   = "162.17.3.193"
    }
    /////////////////////
    # -    Security   - # 
    /////////////////////
    # - NACL and Subnet associations - #
    "nacl" = {
      "F5-main-acl"   = ["subnet-dmz-a", "subnet-dmz-b", "subnet-app-a", "subnet-app-b", "subnet-ddb-a", "subnet-ddb-b", "subnet-sec-a", "subnet-sec-b", "subnet-vdi-a", "subnet-vdi-b"]
      "F5-second-acl" = []
    }
    # - Security Groups - # 
    "security-groups" = [
      "efs-airflow-mt-sg",
      # "sonicwall-sg",
      # "airflow-sg",
      # "docker-sg",
      # "rds-sg",
      # "efs-airflow-ec2-sg",
      # "devops-test-env-sg",
      # "kibana-sg",
      # "tls20-test-sg",
      # "aws-created-directory-controllers-sg",
      # "reportingservice-sg",
      # "aws-workspace-sg",
      # "aws-vpn-client-sg",
      # "redis-sg",
      # "workspace-sg",
      # "postgresql-5lab-sg",
      # "sftp2-sg",
      # "sec-sg",
      # "jenkins-sg",
      # "f5-ml-sg",
      # "rds-lambda-sg",
      # "tableau-sg",
      # "www-sg",
      # "haproxy-sg",
      # "f5-all-sg",
      # "workspaces-sg",
      # "default-10-vpc-sg",
      # "lambda-sg",
      # "sftp-sg",
      # "deny-all-sg",
      # "transfer-sg",
      # "sql-sg",
      # "nat-sg",
      # "app-sg",
      # "nfs-sg",
      # "redirect-sg",
      # "f5-dremio-sg"
    ]
  }
  //////////////////////
  # -     VPC-02     - #
  //////////////////////
  "F5-vpc-02" = {
    "vpc-tag-name"                     = "F5-vpc-02"
    "vpc-cidr-block"                   = "192.168.0.0/16"
    "enable_dns_hostnames"             = "true"
    "enable_dns_support"               = "true"
    "instance_tenancy"                 = "default"
    "assign_generated_ipv6_cidr_block" = "false"
    "enable_classiclink"               = "false"
    "enable_classiclink_dns_support"   = "false"
    # - IGW - #
    "vpc-igw" = "F5-vpc-02-igw"
    # - Subnets - #
    "private-subnets" = ["subnet-dmz2-a", "subnet-dmz2-b"]
    # - Route Tables and Subnet associations - #
    "routes" = {}
    //////////////////////
    # -  NAT Gateways  - #
    ////////////////////// 
    "nat-gws" = {
      "F5-2-AZ-a-nat-gw" = {
        "in-subnet" = "subnet-dmz2-a"
      }
      "F5-2-AZ-b-nat-gw" = {
        "in-subnet" = "subnet-dmz2-b"
      }
    }
    # - Gateway Endpoints and Route Table associations - #
    "vpc-gw-endpoints" = {}
    //////////////////////
    # -       VPN      - #
    //////////////////////   
    # - Virtual Private Gateway - #
    "virtual-private-gws" = {}
    # - Customer Gateway - #
    "customer-gw" = {}
    /////////////////////
    # -    Security   - #
    /////////////////////
    # - NACL and Subnet associations - #
    "nacl" = {}
    # - Security Groups - # 
    "security-groups" = []
  }
}
