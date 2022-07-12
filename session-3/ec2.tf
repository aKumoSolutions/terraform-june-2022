resource "aws_instance" "main" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.main.id,  ]         
    key_name = var.key_name
    tags = {
        Name = var.env
    }
}

# Refence to Input Variables:
# var.name

# 1. Highlight + Command/Control + d =

# 1. Highlight + Command/Control + / = Comment && Uncomment
# 2. Command/Control + F = Find String

# Reference to Resource:
# 1. aws_security_group = first label
# 2. main = second label
# 3. id = attribute 

# What goes inside "" ? 
# - String
# - Hard Coded Value
# - Static Value

# Reference = Dynamic
# In Terraform, Dynamic Values do not use ""

# What is a List?
# Fruit = [ apple, orange, banana ]
# Car   = [ Ford, Mercedes, Lexus, BMW ]









