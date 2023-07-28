#output "private_subnets" {
#  value = module.private_subnets
#}
#
#output "public_subnets" {
#  value = module.public_subnets
#}
#
#
#output "all_route_tables" {
#  value = "local.all_route_tables"
#}
#
#
#output "test" {
#  value = lookup(lookup(module.public_subnets, "public", null), "subnets", null)[0].id
#}
#
#output "vpc_id" {
#  value = aws_vpc.main.id
#}
#
#output "vpc_cidr" {
#  value = aws_vpc.main.cidr_block
#}