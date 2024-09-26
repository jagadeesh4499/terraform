module "ec2" {
  source         = "../terraform-aws-ec2_module-developer"
  ami_id         = var.ami__id
  instance__type = "t3.small"
}