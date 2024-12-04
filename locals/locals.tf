locals {
  domain_name   = "jagadeesh.online"
  zone_id       = "Z10447913ID88SGRCG6FY"
  instance_type = var.environment == "prod" ? "t3.micro" : "t2.micro"
}

# count.index will not work in locals