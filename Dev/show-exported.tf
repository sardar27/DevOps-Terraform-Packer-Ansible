output "vpc_id" {
  value = module.dev_vpc_1.vpc_id
}


output "vpc_id_1_public" {
  value = module.dev_vpc_1.public_subnets_id
}

output "vpc_id_1_private" {
  value = module.dev_vpc_1.private_subnets_id
}