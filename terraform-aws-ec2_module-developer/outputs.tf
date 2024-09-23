output "public__ip" {
  value = aws_instance.terraform.public_ip
}
output "private__ip" {
  value = aws_instance.terraform.private_ip
}
output "instance__id" {
  value = aws_instance.terraform.id
}