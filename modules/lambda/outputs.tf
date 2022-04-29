output "lambda_name" {
  value = aws_lambda_function.this.function_name
}

output "lambda_role" {
  value = aws_lambda_function.this.role
}

output "lambda_arn" {
  value = aws_lambda_function.this.arn
}
