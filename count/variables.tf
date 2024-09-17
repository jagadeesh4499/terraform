variable "instance_names" {
  default = ["database", "backend", "frontend"]
  type    = list(string)
}
variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
  type = map(any)
}