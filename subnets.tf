resource "aws_subnet" "vpc_1_subnet_1" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.subnet_1_cidr
  availability_zone       = var.az_1
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_1_name
  }
}
resource "aws_subnet" "vpc_1_subnet_2" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.subnet_2_cidr
  availability_zone       = var.az_2
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_2_name
  }
}