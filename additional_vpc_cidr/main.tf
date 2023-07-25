resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr" {
  count      = length(var.additional_cidr_block)
  vpc_id     = var.vpc_id[0]
  cidr_block = element(var.additional_cidr_block, count.index)
}
