resource "aws_route_table" "terraform-public" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name = "${var.vpc_name}-Public-RT"
    Env  = var.env
  }
}

resource "aws_route_table" "terraform-private" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name = "${var.vpc_name}-Private-RT"
    Env  = var.env
  }
}

resource "aws_route_table_association" "public-subnets" {
  count = 3
  subnet_id      = element(aws_subnet.public-subnets.*.id,count.index) #Splat Syntax
  route_table_id = aws_route_table.terraform-public.id
}

resource "aws_route_table_association" "private-subnets" {
  count = 3
  subnet_id      = element(aws_subnet.private-subnets.*.id,count.index) #Splat Syntax
  route_table_id = aws_route_table.terraform-private.id
}