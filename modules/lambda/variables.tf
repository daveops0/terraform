variable "function_name" {
  description = "Unique name for your Lambda Function"
  type = "string"
}

variable "role" {
  description = "IAM role to be attached to lambda"
  type = "string"
}

variable "description" {
  description = "description of what lambda does"
  type = "string"
  default = ""
}

variable "runtime" {
  description = "runtime for lambda"
  type = "string"
}

variable "timeout" {
  description = "The amount of time your lambda has to run in seconds"
  default = 60
}
