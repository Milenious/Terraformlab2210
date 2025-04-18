#us-east-1
terraform {
  backend "s3" {
    bucket         = "lk-tform-bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-lk"
    encrypt        = true
  }
}