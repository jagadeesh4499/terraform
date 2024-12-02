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