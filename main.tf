provider "aws" {
  region  = var.infra-region-1
  profile = "default"
}

provider "aws" {
  region  = var.infra-region-2
  profile = "default"
  alias   = "infra-region-2"
}

resource "aws_vpc" "main_infra_vpc" {
  cidr_block           = var.vpc-cidr-block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "VPC_Infra-Prod"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.main_infra_vpc.id
  cidr_block              = var.infra-public-subnet-1-cidr-block
  availability_zone       = var.infra-region-1
  map_public_ip_on_launch = true
  tags = {
    Name = "VPC_Infra-Prod_Public_Subnet_1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.main_infra_vpc.id
  cidr_block              = var.infra-public-subnet-2-cidr-block
  availability_zone       = var.infra-region-2
  map_public_ip_on_launch = true
  tags = {
    Name = "VPC_Infra-Prod_Public_Subnet_2"
  }
}

#EC2 instance "instance_type"
resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow http inbound traffic"
  vpc_id      = aws_vpc.main_infra_vpc.id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#EC2 instance for subnet
#resource "aws_instance" "lk_instance" {
#   ami = "${var.ami-id}"
#   instance_type = "${var.instance_type}"
#   subnet_id = "${aws_subnet.public_subnet_1.id}"
#   associate_public_ip_address = true
#   key_name = "${var.lk-key-pair}"
#  vpc_security_group_ids = ["${aws_security_group.allow_http.id}"]
#}

#EC2 instance for subnet 2
#resource "aws_instance" "lk_instance_2" {
#   ami = "${var.ami-id}"
#   instance_type = "${var.instance_type}"
#   subnet_id = "${aws_subnet.public_subnet_2.id}"
#   associate_public_ip_address = true
#   key_name = "${var.lk-key-pair}"
#   vpc_security_group_ids = ["${aws_security_group.allow_http.id}"]
#}

# 

