resource "aws_vpc" "this" {
  cidr_block       = locals.cidr
  instance_tenancy = "default"
}