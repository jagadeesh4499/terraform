variable "instance_names" {
    default = ["mysql", "backend", "frontend"]
    type = list(string)
}
variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = true
    }
}
variable "zone_id" {
    default = "Z10447913ID88SGRCG6FY"
    type = string
}
variable "domain_name" {
    default = "jagadeesh.online"
    type = string
}