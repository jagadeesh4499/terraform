resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description
  egress { # usually we allow everything in egress
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # allows from any anyone i.e, any IP address
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = var.tags
}
resource "aws_instance" "terraform" {
  ami                    = var.ami_id # left side and right side need not to be same if it is there also then no problem.
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags                   = var.tags
}