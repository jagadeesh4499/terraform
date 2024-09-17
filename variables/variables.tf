variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
  type = string
  description = "This is the AMI ID of devops-practice which is RHEL-9"
}
variable "instance" {
  default = "t2.micro"
  type = string
}
variable "tags" {
  default = {
    Name = "backend"
    Project = "expense"
    Component = "backend"
    Environment = "DEV"
    Terraform = "true"
  }
}
variable "sg_name" {
  default = "allow ssh"
}
variable "sg_decscription" {
  default = "It allows only ssh connections"
}
variable "from_port" {
  default = 22
  type = number
}
variable "to_port" {
  default = 22
  type = number
}
variable "protocol" {
  default = "tcp"
  type = string
}
variable "ingress_cidr" {
  default = ["0.0.0.0/0"]
  type = list(string)
}