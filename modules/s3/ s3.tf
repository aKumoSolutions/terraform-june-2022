resource "aws_s3_bucket" "main" {
    bucket = "${var.env}-terraform-module-test-${var.my_name}"
}