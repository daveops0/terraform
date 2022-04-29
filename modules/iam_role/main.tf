
# Deploy IAM role
resource "aws_iam_role" "this" {
  name = var.role_name
  description = var.description
  assume_role_policy = var.assume_role_policy
}
