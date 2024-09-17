variable "instance_names" {
  default = ["database", "backend", "frontend"]
  type    = list(string)
}