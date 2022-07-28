terraform {
    backend "s3" {
    bucket         = "terraform-session-remote-backend-bucket"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-june-2022-state-lock-table"
    workspace_key_prefix = "session-11"
    }
}

// workspace_key_prefix = key gotta start with this folder
// key = terraform.tfstate

// If you use "default" workspace
// Your backend file will look like this: /session-11/terraform.tfstate

// If you use "dev" workspace
// Your backend file will look like this: /session-11/dev/terraform.tfstate

// If you use "qa" workspace
// Your backend file will look like this: /session-11/qa/terraform.tfstate

