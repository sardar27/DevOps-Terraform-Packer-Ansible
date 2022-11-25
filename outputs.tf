output vpc_id {
  value       = aws_vpc.default.id
}

output subnet-1 {
  value       = aws_subnet.subnet1-public.id
}

output subnet-2 {
  value       = aws_subnet.subnet2-public.id
}

output subnet-3 {
  value       = aws_subnet.subnet3-public.id
}

output sg {
  value       = aws_security_group.allow_all.id
}
