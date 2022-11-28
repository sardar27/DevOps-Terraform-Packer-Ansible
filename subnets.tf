resource "aws_subnet" "public-subnets" {
  count             = 3 # 0 1 2
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.public_subnets_cidr, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "${var.vpc_name}-PublicSubnet-${count.index + 1}"
    Env  = var.env
  }
}

resource "aws_subnet" "private-subnets" {
  count             = 3 # 0 1 2
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.private_subnets_cidr, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "${var.vpc_name}-PrivateSubnet-${count.index + 1}"
    Env  = var.env
  }
}
