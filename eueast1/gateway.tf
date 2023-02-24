resource "aws_vpn_gateway" "EUEast_VPC_GW" {
  vpc_id = aws_vpc.EUEast_VPC.id

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-EUEast_VPC_GW"
        Role: "${var.env_prefix}-EUEast_VPC_GW"
        Team: "team-${var.team}"
    
    }
}