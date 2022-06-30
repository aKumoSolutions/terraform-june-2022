#Every single Terraform Configuration file has a format called .tf

resource "aws_instance" "first_ec2" {
  ami = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"
}


# Syntax is Hashicorp Configuration Language (HCL)

# Terraform has only 2 types blocks. 
# 1. Resource = Create and Manage resources
# 2. Data Source 

# Each block expects label, Resource block expectes 2 labels

# resource = block
# "aws_instance" = first label  = resource type = predefined by Terraform
# "first_ec2"    = second label = logical name or ID = defined by Author
# argument = configurations or properties of your resource

# Nice to have:
# 1. Use _ instead of -
# 2. Use lower cases