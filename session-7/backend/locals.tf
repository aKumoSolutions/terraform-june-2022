# locals {
#     common_tags = {
#         environment = var.environment
#         project     = var.project
#         team        = var.team
#         owner       = var.owner
#         managed_by =  var.managed_by
#         organization = var.organization
#     }
# }

# Under every single resource:


# tags = local.common_tags





# Naming and Tagging Standards

# Naming Standard:
# 1. What Cloud Provider ? = aws
# 2. What is the account ? = non-prod, prod
# 3. What is the environment ? = dev, qa, stage, prod
# 4. What is region ? = us-west-2, us-east-1
# 5. What is the project ?  = wordpress, matrix, apple,

# How does it look?

# aws-nonprod-us-west-2-dev-matrix-${resource}

# Tagging Standard/Common_Tags:
# 1. environment = var.environment
# 2. project     = var.project
# 3. team        = var.team
# 4. owner       = var.owner
# 5. managed_by =  var.managed_by
# 6. organization = var.organization
