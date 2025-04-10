provider "aws" {
    region = "${var.infra-region}"
    profile = "default"
}

resource "aws_vpc" "main_infra_vpc" {
    cidr_block = "${var.vpc-cidr-block}"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name = "VPC_Infra-Prod"
    }
}

resource "aws_subnet" "public_subnet_1" {
    vpc_id = "${aws_vpc.main_infra_vpc.id}"
    cidr_block = "${var.infra-public-subnet-1-cidr-block}"
    availability_zone = "${var.infra-region}a"
    map_public_ip_on_launch = true
    tags = {
        Name = "VPC_Infra-Prod_Public_Subnet_1"
    }
}
  
  resource "aws_subnet" "public_subnet_2" {
    vpc_id = "${aws_vpc.main_infra_vpc.id}"
    cidr_block = "${var.infra-public-subnet-2-cidr-block}"
    availability_zone = "${var.infra-region}"
    map_public_ip_on_launch = true
    tags = {
        Name = "VPC_Infra-Prod_Public_Subnet_2"
    }
}