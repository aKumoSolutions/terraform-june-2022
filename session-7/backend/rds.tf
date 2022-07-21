resource "aws_db_instance" "main" {
  allocated_storage         = 10
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t3.micro"
  db_name                   = "matrix"
  username                  = "admin"
  password                  = random_password.db_password.result
  parameter_group_name      = "default.mysql5.7"
  publicly_accessible       = var.env == "dev" ? true : false
  skip_final_snapshot       = var.env != "prod" ? true : false
  final_snapshot_identifier = var.env != "prod" ? null : "${var.env}-final-snapshot"
}

# null: empty or nothing

# == "equal"
# =  "name and value, key and value, argument and value"

# Equality Operator:
# a == b is true if they have same type or value, otherwise false

# black == red 
# >> false
# red  == red 
# >> true

# Conditional Expressions:
# Condition ? value_1 : value_2

# Example:
# red == red ? buy : not_buy
# >> buy

# red == black ? buy : not_buy
# >> not_buy

# 18 == "18"


