resource "aws_vpc" "main" {
  for_each   = var.vpc
  cidr_block = each.value.cidr_block
  tags = local.vpc_tags
}

module "additional_cidr_block" {
  for_each = var.vpc
  source = "./additional_cidr_block"
  additional_cidr_block = each.value.additional_cidr_block
  vpc_id = var.vpc_id
}