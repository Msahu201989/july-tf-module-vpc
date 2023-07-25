resource "aws_subnet" "main" {
  count             = length(var.cidr_block)
  vpc_id            = var.vpc_id
  cidr_block        = element(var.cidr_block, count.index)
  tags              = local.subnet_tags
  availability_zone = element(var.subnet_availability_zones, count.index)
}

resource "aws_route_table" "aws_route_table" {
  vpc_id = var.vpc_id
  tags = {
    Name    = "${var.env}-${var.name}-rt"
    ENV     = var.env
    PROJECT = "roboshop"
  }
}

resource "aws_route_table_association" "route-table-association" {
  count          = length(aws_subnet.main)
  subnet_id      = element(aws_subnet.main.*.id, count.index)
  route_table_id = aws_route_table.aws_route_table.id
}

resource "aws_route" "internet_gateway_route" {
  route_table_id         = aws_route_table.aws_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.gateway_id
}