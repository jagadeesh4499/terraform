# priority level
# --------------
# 1. command line
# 2. terraform.tfvars
# 3. environment variables, TF_VAR_your_variable_name
# 4. default
# 5. prompt

variable "ami_id" {
  default     = "ami-09c813fb71547fc4f"
  type        = string
  description = "This is the ami id of devops-practice which is RHEL-9    "
}
variable "instance_type" {
  default = "t2.micro"
  type    = string
}
variable "sg_name" {
  default = "allow ssh"
  type    = string
}
variable "sg_description" {
  default = "Allows only ssh connections i.e, port number 22"
  type    = string
}
variable "tags" {
  default = {
    Name        = "backend"
    Project     = "Expense"
    Environment = "Dev"
    Terraform   = "true"
  }
}