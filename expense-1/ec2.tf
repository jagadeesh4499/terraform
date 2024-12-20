resource "aws_instance" "expense" {
  count                  = length(var.instance_names)
  ami                    = data.aws_ami.ami_id.id
  instance_type          = var.instance_names[count.index] == "mysql" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = merge(
    var.common_tags,
    {
      Name = var.instance_names[count.index]
    }
  )
}
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
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # allows from any anyone i.e, any IP address
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(
    var.common_tags,
    {
      Name = "allow_ssh"
    }
  )
}