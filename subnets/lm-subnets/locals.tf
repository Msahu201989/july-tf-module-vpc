locals {
  subnet_tags = {
    NAME    = "${var.name}-subnet"
    ENV     = var.env
    PROJECT = "roboshop"
  }
}

