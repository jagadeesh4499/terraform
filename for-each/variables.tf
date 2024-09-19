variable "instance_names" {
  default = {
    database = "t3.micro"
    backend  = "t2.micro"
    frontend = "t2.micro"
  }
  type = map(any)
}
variable "domain_name" {
  default = "jagadeesh.online"
  type    = string
}
variable "zone_id" {
  default = "Z02034553IKSJVMJ6WLSM"
  type    = string
}