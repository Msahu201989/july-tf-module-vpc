locals {
  subnet_tags = {
    Name    = "${var.name}-subnet"
    ENV     = var.env
    PROJECT = "roboshop"
  }
}







#locals {
#  vpc_tags  = {
#    Name    = "${var.env}-vpc"
#    ENV     = var.env
#    PROJECT = "roboshop"
#  }
#  vpc_peering_tags = {
#    Name    = "${var.env}-vpc-to-management-vpc"
#    ENV     = var.env
#    PROJECT = "roboshop"
#  }
#}