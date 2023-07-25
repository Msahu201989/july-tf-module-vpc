module "lm-subnets" {
  for_each   = var.subnets
  cidr_block = each.value.cidr_block
  source     = "./lm-subnets"
  vpc_id     = var.vpc_id
  env  = var.env
  name = each.value.name
}