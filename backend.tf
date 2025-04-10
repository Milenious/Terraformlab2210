terraform {
  
  backend "s3" {
    bucket   = "${var.backend-s3-bucket-name}"
    key      = "${var.backend-s3-bucket-key}"
    region   = "${var.infra-region}"
    dynamodb_table = "${var.backend-dynamodb-table}"
    encrypt = true
  }
}