resource "aws_vpc" "default" {
  cidr_block = var.cidr_block
  tags = {
    Name = "${var.vpc_name}-${var.env}"
    Env  = var.env
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}