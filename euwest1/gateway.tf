resource "aws_vpn_gateway" "EUWest_VPC_GW" {
  vpc_id = aws_vpc.EUWest_VPC.id

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-EUWest_VPC_GW"
        Role: "${var.env_prefix}-EUWest_VPC_GW"
        Team: "team-${var.team}"
    
    }
}