terraform {
  backend "s3" {
    bucket         = "terraform-session-remote-backend-bucket"
    key            = "session-6/dev/terraform.tfstate" # Prefix 
    region         = "us-west-2"
    dynamodb_table = "terraform-june-2022-state-lock-table"
  }
}

# In backend.tf, you cannot pass any variables