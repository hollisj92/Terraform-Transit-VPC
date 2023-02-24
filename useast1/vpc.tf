resource "aws_vpc" "Transit_VPC" {
  cidr_block = "10.0.0.0/16"

  instance_tenancy = "default"

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-Transit_VPC"
        Role: "${var.env_prefix}-Transit_VPC"
        Team: "team-${var.team}"
    
    }
}

resource "aws_subnet" "Transit_pubnet_a" {
  vpc_id     = aws_vpc.Transit_VPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-Transit_pubnet_a"
        Role: "${var.env_prefix}-Transit_pubnet_a"
        Team: "team-${var.team}"
    
    }
}

resource "aws_subnet" "Transit_pubnet_b" {
  vpc_id     = aws_vpc.Transit_VPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-Transit_pubnet_b"
        Role: "${var.env_prefix}-Transit_pubnet_b"
        Team: "team-${var.team}"
    
    }
}