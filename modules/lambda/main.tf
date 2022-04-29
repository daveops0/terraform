
# Deploy lambda
resource "aws_lambda_function" "this" {
  filename       = var.filename
  function_name  = var.function_name
  role           = var.role
  description    = var.description
  runtime        = var.runtime
  timeout        = var.timeout
}
