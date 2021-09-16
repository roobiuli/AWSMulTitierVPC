//resource "aws_nat_gateway" "webtier1gw" {
//  subnet_id = aws_subnet.webtier1
//  tags = {
//    Name = "webtier1gw"
//  }
//}
//
//resource "aws_nat_gateway" "webtier2gw" {
//  subnet_id = aws_subnet.webtier2
//  tags = {
//    Name = "webtier2gw"
//  }
//}
//
//resource "aws_nat_gateway" "webtier3gw" {
//  subnet_id = aws_subnet.webtier3
//  tags = {
//    Name = "webtier3gw"
//  }
//}

//
//resource "aws_eip" "FrontendIP" {
//
//}
### NAT to be added later


### Simple IGW implementation since OUTBOUND from private subnets it's not mandatory
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.Custome.id
  tags = {
    Name = "Custom VPC Main IGW"
  }
}