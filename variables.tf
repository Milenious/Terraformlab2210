variable "backend s3-bucket-key" {
  description = "The S3 bucket key for the Terraform file state file"
  type        = string
  default = "global/s3/terraform.tfstate"
}

variable "backend-s3-bucket-name" {
    description = "The S3 bucket name for the Terraform file state file"
    type        = string
    default = "lk-tform-bucket"
}

variable "backend dynamodb-table" {
  description = "The DynamoDB table key for the Terraform file state file"
  type        = string
  default = "terraform-lock-lk"
}
  
variable "infra-region" {
  description = "The AWS region for the backend"
  type        = string
  default = "us-east-1"
}

variable "vpc-cidr-block" {
    description = "The CIDR block for the VPC"
    type        = string
    default = "10.0.0.0/16"
}

variable "infra-public-subnet-1-cidr-block" {
    description = "The CIDR blocks for the public subnet 1"
    type        = string
    default = "10.0.1.0/24" 
}

variable "infra-public-subnet-2-cidr-block" {
  description = "The CIDR block for the public subnet 2"
  type        = string
  default = "10.0.2.0/24"
}