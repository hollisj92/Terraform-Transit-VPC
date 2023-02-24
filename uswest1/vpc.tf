resource "aws_vpc" "USWest_VPC" {
  cidr_block = "10.0.0.0/16"

  instance_tenancy = "default"

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-USWest_VPC"
        Role: "${var.env_prefix}-USWest_VPC"
        Team: "team-${var.team}"
    
    }
}

resource "aws_subnet" "USWest_Pubnet_1a" {
  vpc_id     = aws_vpc.USWest_VPC.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "us-west-1a"

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-USWest_Pubnet_1a"
        Role: "${var.env_prefix}-USWest_Pubnet_1a"
        Team: "team-${var.team}"
    
    }
}

resource "aws_subnet" "USWest_Pubnet_1b" {
  vpc_id     = aws_vpc.USWest_VPC.id
  cidr_block = "10.0.7.0/24"
  availability_zone = "us-west-1b"

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-USWest_Pubnet_1b"
        Role: "${var.env_prefix}-USWest_Pubnet_1b"
        Team: "team-${var.team}"
    
    }
}