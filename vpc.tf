resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  tags                 = local.vpc_tags
  enable_dns_hostnames = true
  enable_dns_support   = true
}

#module "additional_cidr_block" {
#  for_each              =   var.vpc
#  source                = "./additional_vpc_cidr"
#  additional_cidr_block = each.value.additional_cidr_block
#  vpc_id                = [ for k, v in aws_vpc.main : v.id ]
#}
#
#output "vpc" {
#  value = [for k, v in aws_vpc.main : v.id]
#}
#
