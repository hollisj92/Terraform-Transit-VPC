data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

data "template_file" "user_data" {
  template = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install -y openvpn
sudo mkdir /etc/openvpn
cd /etc/openvpn
sudo wget https://your-openvpn-server.com/config.zip
sudo unzip config.zip
sudo rm config.zip
sudo systemctl start openvpn
EOF
}


resource "aws_instance" "Router_1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro" 
  subnet_id = aws_subnet.Transit_pubnet_a.id
  user_data = "${data.template_file.user_data.template}"
  

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-Router_1"
        Role: "${var.env_prefix}-Router_1"
        Team: "team-${var.team}"
    
    }
}

resource "aws_instance" "Router_2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro" 
  subnet_id = aws_subnet.Transit_pubnet_b.id
  user_data = "${data.template_file.user_data.template}"
       

  tags = {
        Env: "${var.env_prefix}"
        Service: "${var.env_prefix}-${var.proj_prefix}"
        Name : "${var.env_prefix}-Router_2"
        Role: "${var.env_prefix}-Router_2"
        Team: "team-${var.team}"
    
    }
}