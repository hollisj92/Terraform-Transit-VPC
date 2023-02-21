provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

module "eueast1" {
  source          = "./eueast1"
  region          = var.region
  access_key      = var.access_key
  secret_key      = var.secret_key
  env_prefix      = var.env_prefix
  team            = var.team
  proj_prefix     = var.proj_prefix
  dx_gateway_1    = var.dx_gateway_1
  dx_gateway_2    = var.dx_gateway_2
  location_code_1 = var.location_code_1
  location_code_2 = var.location_code_2
  side_asn        = var.side_asn
}

module "euwest1" {
  source          = "./euwest1"
  region          = var.region
  access_key      = var.access_key
  secret_key      = var.secret_key
  env_prefix      = var.env_prefix
  team            = var.team
  proj_prefix     = var.proj_prefix
  dx_gateway_1    = var.dx_gateway_1
  dx_gateway_2    = var.dx_gateway_2
  location_code_1 = var.location_code_1
  location_code_2 = var.location_code_2
  side_asn        = var.side_asn
}

module "useast1" {
  source          = "./useast1"
  region          = var.region
  access_key      = var.access_key
  secret_key      = var.secret_key
  env_prefix      = var.env_prefix
  team            = var.team
  proj_prefix     = var.proj_prefix
  dx_gateway_1    = var.dx_gateway_1
  dx_gateway_2    = var.dx_gateway_2
  location_code_1 = var.location_code_1
  location_code_2 = var.location_code_2
  side_asn        = var.side_asn
}

module "uswest1" {
  source          = "./uswest1"
  region          = var.region
  access_key      = var.access_key
  secret_key      = var.secret_key
  env_prefix      = var.env_prefix
  team            = var.team
  proj_prefix     = var.proj_prefix
  dx_gateway_1    = var.dx_gateway_1
  dx_gateway_2    = var.dx_gateway_2
  location_code_1 = var.location_code_1
  location_code_2 = var.location_code_2
  side_asn        = var.side_asn
}