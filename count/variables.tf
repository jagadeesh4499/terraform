variable "instance_names" {
    default = ["mysql", "backend", "frontend"]
    type = list(string)
}