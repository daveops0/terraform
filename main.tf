# Package lambda src as zip archive
resource "archive_file" "lambda_zip" {
  type = "zip"
  source_dir = "${path.module}/src"
  output_path = "${var.function_name}.zip"
}

# Policy for role
data "aws_iam_policy_document" "lambda-role-policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRoles"]
  }
}

# Create role
module "fb_role" {
  source = "./modules/iam_role"

  role_name = "fizzbuzzer"
  description = "role to be used for fizzbuzz lambda"
  assume_role_policy = data.aws_iam_policy_document.lambda-role-policy.json
}


# Deploy lambda from archive
module "fb_lambda" {
  source = "./modules/lambda"
  filename = data.archive_file.lambda_zip.output_path
  role = module.fb_role.role_arn
  function_name = "fizzbuzz"
  description = "print fizzbuzz like a boss"
  runtime = "python3.6"
}
