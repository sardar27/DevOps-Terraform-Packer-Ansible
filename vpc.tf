resource "aws_vpc" "default" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
  depends_on = [
    aws_s3_bucket.devopsvpcflowlogs
  ]
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}