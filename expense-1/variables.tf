variable "instance_names" {
  default = ["database", "backend", "frontend"]
  type    = list(string)
}
variable "common_tags" {
  default = {
    Environment = "Dev"
    Project     = "Expense"
    Terraform   = "True"
  }
}
variable "zone_id" {
  default = "Z02034553IKSJVMJ6WLSM"
  type    = string
}
variable "domain_name" {
  default = "jagadeesh.online"
  type    = string
}