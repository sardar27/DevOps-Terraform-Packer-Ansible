resource "aws_subnet" "public-subnets" {
  #count             = 4 # 0 1 2 3
  count             = length(var.public_subnets_cidr)
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.public_subnets_cidr, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "${var.vpc_name}-PublicSubnet-${count.index + 1}"
    Env  = var.env
  }
}

resource "aws_subnet" "private-subnets" {
  #count             = 4 # 0 1 2 3
  count             = length(var.private_subnets_cidr)
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.private_subnets_cidr, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "${var.vpc_name}-PrivateSubnet-${count.index + 1}"
    Env  = var.env
  }
}
