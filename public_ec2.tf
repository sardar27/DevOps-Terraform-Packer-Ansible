#resource "aws_instance" "web-1" {
#  ami                         = var.imagename
#  availability_zone           = "us-east-1a"
#  instance_type               = "t2.micro"
#  key_name                    = var.key_name
#  subnet_id                   = aws_subnet.subnet1-public.id
#  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
#  associate_public_ip_address = true
#  tags = {
#    Name       = "${var.vpc_name}-${var.env}-Server-1"
#    Env        = var.env
#    Owner      = "Sree"
#    CostCenter = "ABCD"
#  }
#  lifecycle {
#    prevent_destroy = false
#    ignore_changes  = [tags]
#  }
#}
#
#resource "aws_instance" "web-2" {
#  ami                         = var.imagename
#  availability_zone           = "us-east-1a"
#  instance_type               = "t2.micro"
#  key_name                    = var.key_name
#  subnet_id                   = aws_subnet.subnet1-public.id
#  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
#  associate_public_ip_address = true
#  tags = {
#    Name       = "${var.vpc_name}-${var.env}-Server-1"
#    Env        = var.env
#    Owner      = "Sree"
#    CostCenter = "ABCD"
#  }
#  lifecycle {
#    prevent_destroy = false
#    ignore_changes  = [tags]
#  }
#}