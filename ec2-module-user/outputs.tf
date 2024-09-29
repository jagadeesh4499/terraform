output "public_ip" {
  value = module.ec2.public__ip
}
output "private_ip" {
  value = module.ec2.private__ip
}
output "id" {
  value = module.ec2.instance__id
}   