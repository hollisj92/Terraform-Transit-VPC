module "eueast1" {
  source          = "./eueast1"
  region          = var.region
  access_key      = var.access_key
  secret_key      = var.secret_key
  env_prefix      = var.env_prefix
  team            = var.team
  proj_prefix     = var.proj_prefix
  ami             = var.ami
  bastion_priv_ip = var.bastion_priv_ip
  keyname         = var.keyname
  public_ip       = var.public_ip
  ec2_eip_cidr    = var.ec2_eip_cidr
}

module "euwest1" {
  source          = "./euwest1"
  region          = var.region
  access_key      = var.access_key
  secret_key      = var.secret_key
  env_prefix      = var.env_prefix
  team            = var.team
  proj_prefix     = var.proj_prefix
  public_ip       = var.public_ip
  bastion_priv_ip = var.bastion_priv_ip
  keyname         = var.keyname
  ec2_eip_cidr    = var.ec2_eip_cidr
  ami             = var.ami
}

module "useast1" {
  source          = "./useast1"
  region          = var.region
  access_key      = var.access_key
  secret_key      = var.secret_key
  env_prefix      = var.env_prefix
  team            = var.team
  proj_prefix     = var.proj_prefix
  bastion_priv_ip = var.bastion_priv_ip
  ami             = var.ami
  keyname         = var.keyname
  ec2_eip_cidr    = var.ec2_eip_cidr
  public_ip       = var.public_ip
}

module "uswest1" {
  source          = "./uswest1"
  region          = var.region
  access_key      = var.access_key
  secret_key      = var.secret_key
  env_prefix      = var.env_prefix
  team            = var.team
  proj_prefix     = var.proj_prefix
  ec2_eip_cidr    = var.ec2_eip_cidr
  keyname         = var.keyname
  public_ip       = var.public_ip
  ami             = var.ami
  bastion_priv_ip = var.bastion_priv_ip
}
