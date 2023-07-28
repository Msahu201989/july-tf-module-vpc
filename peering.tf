#resource "aws_vpc_peering_connection" "management-vpc-to-env-vpc" {
#  peer_vpc_id = aws_vpc.main.id
#  vpc_id      = lookup(var.management_vpc, "vpc_id", null)
#  auto_accept = true
#  tags        = local.vpc_peering_tags
#}
#
#
#resource "aws_route" "route_from_default_management_route_table" {
#  count                     = length(local.all_route_tables)
#  route_table_id            = element(local.all_route_tables, count.index)
#  destination_cidr_block    = lookup(var.management_vpc, "vpc_cidr", null)
#  vpc_peering_connection_id = aws_vpc_peering_connection.management-vpc-to-env-vpc.id
#}
#
#resource "aws_route" "route_to_default_management_route_table" {
#  route_table_id            = lookup(var.management_vpc, "route_table", null)
#  destination_cidr_block    = var.cidr_block
#  vpc_peering_connection_id = aws_vpc_peering_connection.management-vpc-to-env-vpc.id
#}