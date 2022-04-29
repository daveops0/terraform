variable "role_name" {
  description = "Unique name for your Lambda Function"
  type = "string"
}

variable "assume_role_policy" {
  description = "Policy that grants an entity permission to assume the role."
  type = "string"
}

variable "description" {
  description = "describe purpose of the role"
  type = "string"
  default = ""
}
