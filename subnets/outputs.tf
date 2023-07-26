#locals {
#  subnets_list  = flatten([for i, j in module.lm-subnets: j.subnets])
#}
#
#output "subnets_list" {
#  value = local.subnets_list[*].id
#}
#
#output "subnets" {
#  value = module.lm-subnets
#}
#
#
#output "rt" {
#  value = [for i, j in aws_route_table.aws_route_table: j.id]
#  #  {
#  #    for k, v in aws_route_table.aws_route_table : k => v.id
#  #  }
#}

output "subnets" {
  value = aws_subnet.main
}

output "route_tables" {
  value = aws_route_table.aws_route_table
}
