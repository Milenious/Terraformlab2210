variable "backend-s3-bucket-key" {
  description = "The S3 bucket key for the Terraform file state file"
  type        = string
  default     = "global/s3/terraform.tfstate"
}

variable "backend-s3-bucket-name" {
  description = "The S3 bucket name for the Terraform file state file"
  type        = string
  default     = "lk-tform-bucket"
}

variable "backend-dynamodb-table" {
  description = "The DynamoDB table key for the Terraform file state file"
  type        = string
  default     = "terraform-lock-lk"
}

variable "infra-region-1" {
  description = "The AWS region for the backend"
  type        = string
  default     = "us-east-1"
}

variable "infra-region-2" {
  description = "The AWS region for the backend"
  type        = string
  default     = "us-east-2"
}

variable "vpc-cidr-block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "infra-public-subnet-1-cidr-block" {
  description = "The CIDR blocks for the public subnet 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "infra-public-subnet-2-cidr-block" {
  description = "The CIDR block for the public subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}

#variable availbility_zone 1
variable "infra-public-subnet-1-availability-zone" {
  description = "The availability zone for the public subnet 1"
  type        = string
  default     = "us-east-1a"
}

#variable availbility_zone 2
variable "infra-public-subnet-2-availability-zone" {
  description = "The availability zone for the public subnet 2"
  type        = string
  default     = "us-east-1b"
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
variable "ami-id" {
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

