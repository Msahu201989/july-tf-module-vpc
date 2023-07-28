#resource "aws_internet_gateway" "gw" {
#  count  = length(local.vpc_ids)
#  vpc_id = element(local.vpc_ids, count.index)
#
#  tags = {
#    Name = "${var.env}-igw"
#  }
#}
#
#resource "aws_eip" "ngw" {
#  vpc = true
#}
#
#resource "aws_nat_gateway" "ngw" {
#  count         = length(local.vpc_ids)
#  allocation_id = aws_eip.ngw.id
#  subnet_id     = local.public_subnets_list[0]
#
#  tags = {
#    Name = "NAT GW"
#  }
#}
#
#locals {
#  private_route_tables = flatten([for i, j in module.private_subnets : j.rt])
#  private_subnets_list = flatten([for i, j in module.private_subnets : j.subnets_list])
#  public_subnets_list  = flatten([for i, j in module.public_subnets : j.subnets_list])
#  public_route_tables  = flatten([for i, j in module.public_subnets : j.rt])
#}
#
#resource "aws_route" "internet_gateway_route_to_public_subnets" {
#  count                  = length(local.public_route_tables)
#  route_table_id         = element(local.public_route_tables, count.index)
#  destination_cidr_block = "0.0.0.0/0"
#  gateway_id             = aws_internet_gateway.gw[0].id
#}
#
#resource "aws_route" "nat_gateway_route_to_private_subnets" {
#  count                  = length(local.private_route_tables)
#  route_table_id         = element(local.private_route_tables, count.index)
#  destination_cidr_block = "0.0.0.0/0"
#  gateway_id             = aws_nat_gateway.ngw[0].id
#}