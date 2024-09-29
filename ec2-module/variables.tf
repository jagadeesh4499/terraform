variable "ami_id" {
  type = string
}
variable "instance__type" {
  default = "t3.micro"
  type    = string
  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance__type)
    error_message = "instance_type can only be t3.micro, t3.small, t3.medium"
  }
}