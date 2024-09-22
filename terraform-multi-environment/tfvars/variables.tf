variable "environment" {
}
variable "common_tags" {
  default = {
    Project   = "expense"
    Terraform = "true"
  }
}
variable "tags" {
  type = map(any)
}
variable "instances" {
  type = map(any)
}
variable "zone_id" {
  default = "Z02034553IKSJVMJ6WLSM"
}
variable "domain_name" {
  default = "jagadeesh.online"
}