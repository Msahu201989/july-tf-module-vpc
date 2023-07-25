resource "aws_subnet" "main" {
  count      = length(var.cidr_block)
  vpc_id     = var.vpc_id
  cidr_block = element(var.cidr_block, count.index)
  tags = local.subnet_tags
}
