resource "aws_vpc" "this"{
  cidr_block       = local.cidr
  instance_tenancy = "default"
  tags = var.tags
}