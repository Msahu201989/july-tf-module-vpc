resource "aws_internet_gateway" "gw" {
  count = length(local.vpc_ids)
  vpc_id = element(local.vpc_ids, count.index)

  tags = {
    Name = "${var.env}-igw"
  }
}
