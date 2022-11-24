data "aws_vpc" "aws28-vpc" {
  id = "vpc-06c893f2dbd2f7aee"
}

data "aws_subnet" "aws28-subnet-1" {
  id = "subnet-0ede57422a0859362"
}

data "aws_security_group" "aws28-sg" {
  id = "sg-0992e02a12c64b7dd"
}

resource "aws_instance" "aws28-web-1" {
  ami                         = var.imagename
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  subnet_id                   = data.aws_subnet.aws28-subnet-1.id
  vpc_security_group_ids      = ["${data.aws_security_group.aws28-sg.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "ubuntumachine-2"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
  lifecycle {
    prevent_destroy = false
    ignore_changes  = [tags]
  }
}