resource "aws_customer_gateway" "Library_Gateway" {
  bgp_asn    = 65000
  ip_address = "172.83.124.12"
  type       = "ipsec.1"

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-Library_Gateway"
        Role: "${var.env_prefix}-Library_Gateway"
        Team: "team-${var.team}"
    
    }
}

resource "aws_customer_gateway" "Highschool_Gateway" {
  bgp_asn    = 65000
  ip_address = "172.83.124.11"
  type       = "ipsec.1"

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-Highschool_Gateway"
        Role: "${var.env_prefix}-Highschool_Gateway"
        Team: "team-${var.team}"
    
    }
}

resource "aws_customer_gateway" "Gov_Gateway" {
  bgp_asn    = 65000
  ip_address = "172.83.124.10"
  type       = "ipsec.1"

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-Gov_Gateway"
        Role: "${var.env_prefix}-Gov_Gateway"
        Team: "team-${var.team}"
    
    }
}