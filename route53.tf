resource "aws_route53_zone_association" "zone" {
  zone_id = var.private_zone_id
  vpc_id  = aws_vpc.main.id
}