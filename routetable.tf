resource "aws_route_table" "vpc_1_routetable" {
  vpc_id = aws_vpc.vpc_1.id
  tags = {
    "Name" = var.Public_route_name
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_1_igw.id
  }
}

resource "aws_route_table_association" "subnet_1_Associate" {
  route_table_id = aws_route_table.vpc_1_routetable.id
  subnet_id = aws_subnet.vpc_1_subnet_1.id
}

resource "aws_route_table_association" "subnet_2_Associate" {
  route_table_id = aws_route_table.vpc_1_routetable.id
  subnet_id = aws_subnet.vpc_1_subnet_2.id
}