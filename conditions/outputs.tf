output "private_ip" {
  value = aws_instance.terraform.private_ip
  sensitive = false
  description = "It will display the private IP address of the created instance"
}