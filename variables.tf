variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24","10.0.2.0/24"]
}

#variable availbility_zone 
variable "availability_zones" {
  description = "The availability zones for the public subnets"
  type        = list(string)
  default     = ["us-east-1a","us-east-1b"]
}

#add a key name for the key pair
variable "key-pair-name" {
  description = "The name of the key pair"
  type        = string
  default     = "terraform-key"
}


variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

#ami id for the instance
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-00a929b66ed6e0de6"
}

#key pair name for the instance
variable "lk-key-pair" {
  description = "The name of the key pair"
  type        = string
  default     = "terraform-key"
}

