#us-east-1
terraform {
  backend "s3" {
    bucket         = "lk-tform-bucket"
    key            = "terraform.tfstate"
    region         = ["us-east-1", "us-east-2"]
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}


# backend "s3" {
#  bucket   = "${var.backend-s3-bucket-name}"
#  key      = "${var.backend-s3-bucket-key}"
#  region   = "${var.infra-region}"
#  dynamodb_table = "${var.backend-dynamodb-table}"
#  encrypt = true
#}
#}
