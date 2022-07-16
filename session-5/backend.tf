terraform {
  backend "s3" {
    bucket         = "terraform-session-remote-backend-bucket"
    key            = "session-5/terraform.tfstate" # Prefix 
    region         = "us-west-2"
    dynamodb_table = "terraform-june-2022-state-lock-table"
  }
}

# Terraform State Lock
# Terraform State Lock prevents from the accidental Apply or Destroy command or State change.
# It will make sure one apply or destroy at the time. 
# Terraform State Lock uses DynamoDB table to lock every single executions.
