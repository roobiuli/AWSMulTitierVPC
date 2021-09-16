//resource "aws_network_acl" "weballow" {
//  vpc_id = aws_vpc.Custome.id
//
//  ingress =  [{
//    action = "allow"
//    from_port = 80
//    protocol = "tcp"
//    rule_no = 100
//    to_port = 80
//    cidr_block = aws_subnet.webtier1.cidr_block
//  },
//    {
//      action = "allow"
//      from_port = 443
//      protocol = "tcp"
//      rule_no = 100
//      to_port = 443
//      cidr_block = aws_subnet.webtier1.cidr_block
//    }
//]
//  egress = [{
//    action = "allow"
//    from_port = 80
//    protocol = "tcp"
//    rule_no = 101
//    to_port = 80
//    cidr_block = aws_subnet.webtier1.cidr_block
//
//  }, {
//    action = "allow"
//    from_port = 443
//    protocol = "tcp"
//    rule_no = 101
//    to_port = 443
//    cidr_block = aws_subnet.webtier1.cidr_block
//  }
//
//  ]
//
//}
resource "aws_network_acl" "sshacl" {
  vpc_id = aws_vpc.Custome.id
  subnet_ids =  [aws_subnet.Backendtier1.id, aws_subnet.Backendtier2.id, aws_subnet.Backendtier3.id, aws_subnet.datatier1.id, aws_subnet.datatier2.id, aws_subnet.datatier3.id]

}


resource "aws_network_acl_rule" "sshallow" {
  network_acl_id = aws_network_acl.sshacl.id
  protocol = "tcp"
  rule_action = "allow"
  rule_number = 101
  egress = false
  from_port = 22
  to_port = 22
  cidr_block = aws_subnet.webtier1.cidr_block
}


resource "aws_network_acl" "appacl" {
  vpc_id = aws_vpc.Custome.id
  subnet_ids = [aws_subnet.Backendtier1.id, aws_subnet.Backendtier2.id, aws_subnet.Backendtier3.id]
}


resource "aws_network_acl_rule" "appallow" {
  network_acl_id = aws_network_acl.appacl.id
  protocol = "tcp"
  rule_action = "allow"
  rule_number = 200
  egress = false
  from_port = 8080
  to_port = 8080
  cidr_block = aws_subnet.webtier1.cidr_block
}




resource "aws_network_acl" "dbacl" {
  vpc_id = aws_vpc.Custome.id
  subnet_ids = [aws_subnet.datatier1.id, aws_subnet.datatier2.id, aws_subnet.datatier3.id]
}



resource "aws_network_acl_rule" "dballow" {
  network_acl_id = aws_network_acl.dbacl.id
  protocol = "tcp"
  rule_action = "allow"
  rule_number = 101
  egress = false
  from_port = 336
  to_port = 336
  cidr_block = aws_subnet.Backendtier1.cidr_block
}


