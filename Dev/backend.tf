terraform {
  backend "s3" {
    bucket         = "devops28terraformstate0148"
    key            = "modules-devops29.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devops28terraformlocks"
    encrypt        = true
  }
}