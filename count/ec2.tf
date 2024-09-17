resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow ssh"
  description = "It allows only ssh connections"
  egress {
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
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(
    var.common_tags, {
      Name = "allow_ssh"
    }
  )
}
resource "aws_instance" "terraform" {
  count                  = length(var.instance_names)
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
  tags = merge(
    var.common_tags, {
      Name = var.instance_names[count.index]
    }
  )
}