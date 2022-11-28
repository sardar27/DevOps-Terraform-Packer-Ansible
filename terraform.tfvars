vpc_name             = "DevOps28"
cidr_block           = "10.28.0.0/16"
imagename            = "ami-08c40ec9ead489470"
key_name             = "sar"
env                  = "DEV"
public_subnets_cidr  = ["10.28.1.0/24", "10.28.2.0/24", "10.28.3.0/24"]
private_subnets_cidr = ["10.28.10.0/24", "10.28.20.0/24", "10.28.30.0/24"]
azs                  = ["us-east-1a", "us-east-1b", "us-east-1c"]