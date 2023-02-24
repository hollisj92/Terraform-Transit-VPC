resource "aws_vpn_gateway" "USWest_VPC_Gateway" {
  vpc_id = aws_vpc.USWest_VPC.id

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-USWest_VPC_Gateway"
        Role: "${var.env_prefix}-USWest_VPC_Gateway"
        Team: "team-${var.team}"
    
    }
}