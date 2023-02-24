resource "aws_security_group" "allow_SSH" {
  name        = "allow_SSH"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.Transit_VPC.id

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.Transit_VPC.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.Transit_VPC.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-allow_SSH_rule"
        Role: "${var.env_prefix}-allow_SSH_rule"
        Team: "team-${var.team}"
    
    }
}

resource "aws_network_acl" "Transit_NACL" {
  vpc_id = aws_vpc.Transit_VPC.id

  egress {
    rule_no      = 200
    protocol         = "all"
    action      = "allow"
    cidr_block       = "0.0.0.0/0"
    from_port        = 0
    to_port          = 0

  }

  ingress {
    rule_no      = 100
    protocol         = "tcp"
    action      = "allow"
    cidr_block       = "172.83.124.0/24"
    from_port        = 22
    to_port          = 22
  }

  ingress {
    rule_no      = 101
    protocol         = "tcp"
    action      = "allow"
    cidr_block       = "172.83.124.0/24"
    from_port        = 22
    to_port          = 22
  }


ingress {
    rule_no      = 102
    protocol         = "tcp"
    action      = "allow"
    cidr_block       = "172.83.124.0/24"
    from_port        = 22
    to_port          = 22
  }


   tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-allow_SSH_rule"
        Role: "${var.env_prefix}-allow_SSH_rule"
        Team: "team-${var.team}"
    
    }
}