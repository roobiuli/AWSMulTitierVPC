### Internet access I/O for the web tier (3 subnets)
resource "aws_route_table" "Webteir1InternetAccess" {
  vpc_id = aws_vpc.Custome.id
  route {
    cidr_block = aws_subnet.webtier1.cidr_block
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table" "Webteir2InternetAccess" {
  vpc_id = aws_vpc.Custome.id
  route {
    cidr_block = aws_subnet.webtier2.cidr_block
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table" "Webteir3InternetAccess" {
  vpc_id = aws_vpc.Custome.id
  route {
    cidr_block = aws_subnet.webtier3.cidr_block
    gateway_id = aws_internet_gateway.gw.id
  }
}

##########

