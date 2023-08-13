resource "aws_vpc" "this"{
  cidr_block       = local.cidr
  instance_tenancy = "default"
  tags = var.tags
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id
  tags = var.igw-tags
}
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.1.0/24"

  tags =var.public-subnet-tags
  }

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.2.0/24"

  tags =var.private-subnet-tags
  }

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = var.public-route-table-tags{
      Name = "automated-public-rt"
    }
  }




