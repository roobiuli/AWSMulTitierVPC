resource "aws_subnet" "webtier1" {
  cidr_block = "10.10.1.0/24"
  vpc_id = aws_vpc.Custome.id
}

resource "aws_subnet" "webtier2" {
  cidr_block = "10.10.2.0/24"
  vpc_id = aws_vpc.Custome.id
}
resource "aws_subnet" "webtier3" {
  cidr_block = "10.10.3.0/24"
  vpc_id = aws_vpc.Custome.id
}
resource "aws_subnet" "Backendtier1" {
  cidr_block = "10.10.4.0/24"
  vpc_id = aws_vpc.Custome.id
}

resource "aws_subnet" "Backendtier2" {
  cidr_block = "10.10.5.0/24"
  vpc_id = aws_vpc.Custome.id
}
resource "aws_subnet" "Backendtier3" {
  cidr_block = "10.10.6.0/24"
  vpc_id = aws_vpc.Custome.id
}
resource "aws_subnet" "datatier1" {
  cidr_block = "10.10.6.0/24"
  vpc_id = aws_vpc.Custome.id
}
resource "aws_subnet" "datatier2" {
  cidr_block = "10.10.8.0/24"
  vpc_id = aws_vpc.Custome.id
}
resource "aws_subnet" "datatier3" {
  cidr_block = "10.10.9.0/24"
  vpc_id = aws_vpc.Custome.id
}
