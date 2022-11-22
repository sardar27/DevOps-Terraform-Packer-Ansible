terraform {
  required_version = ">= 1.2.9" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 5.0.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "devops28terraformstate0143"
    key    = "devenv/devops28.tfstate"
    region = "us-east-1"
  }
}

