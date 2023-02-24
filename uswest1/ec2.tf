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

resource "aws_launch_template" "USWest_EC2_Group_Template_1a" {
  name_prefix   = "USWest_EC2_Group_"
  image_id      = "ami-1a2b3c"
  instance_type = "t2.micro"
  security_group_names = [ "allow_ssh" ]
}

resource "aws_autoscaling_group" "USWest_EC2_Group" {
  availability_zones = ["us-west-1a"]
  desired_capacity   = 1
  max_size           = 2
  min_size           = 1

  launch_template {
    id      = aws_launch_template.USWest_EC2_Group_Template_1a.id
    version = "$Latest"
  }
}

resource "aws_autoscaling_group" "USWest_EC2_Group_Template_1b" {
  availability_zones = ["us-west-1b"]
  desired_capacity   = 1
  max_size           = 2
  min_size           = 1

  launch_template {
    id      = aws_launch_template.USWest_EC2_Group_Template_1a.id
    version = "$Latest"
  }
}

