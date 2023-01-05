module "dev_compute_1" {
  source      = "../modules/compute"
  environment = module.dev_vpc_1.environment
  amis = {
    us-east-1 = "ami-0574da719dca65348" # ubuntu 20.04 LTS
    us-east-2 = "ami-0ff39345bd62c82a5" # ubuntu 20.04 LTS
  }
  aws_region           = var.aws_region
  instance_type        = "t2.nano"
  key_name             = "sar"
  iam_instance_profile = module.dev_iam_1.instprofile
  public_subnets       = module.dev_vpc_1.public_subnets_id
  private_subnets      = module.dev_vpc_1.private_subnets_id
  sg_id                = module.dev_sg_1.sg_id
  vpc_name             = module.dev_vpc_1.vpc_name
  depends_on = [
    module.dev_natgw_1.natgw_id,
    module.dev_elb_1.elb_listner
  ]
}