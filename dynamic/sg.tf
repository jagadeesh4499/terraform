resource "aws_security_group" "allow_ssh" {
  name        = "allow ssh"
  description = "Allows only ssh connections i.e, port number 22"
  egress { # usually we allow everything in egress
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  # terraform will give us a variable with block name
  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks # allows from any anyone i.e, any IP address
      description = ingress.value.description
    }
  }
  tags = {
    Name = "allow_ssh"
  }
}