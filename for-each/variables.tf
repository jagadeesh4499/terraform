variable "instances" {
  type = map(any)
  default = {
    mysql    = "t3.micro"
    backend  = "t2.micro"
    frontend = "t2.micro"
  }
}
variable "zone_id" {
  default = "Z10447913ID88SGRCG6FY"
  type    = string
}
variable "domain_name" {
  default = "jagadeesh.online"
  type    = string
}