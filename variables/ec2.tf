resource "aws_instance" "roboshop" {
  ami           = "ami_id"
  instance_type = "instance_type"

  tags = {
    Name = "instance_name"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "sg_name"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "sg_display-name"
  }

  ingress {
    from_port        = "from_port"
    to_port          = "to_port"
    protocol         = "-1"
    cidr_blocks      = "cidr_bllocks"
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = "from_port"
    to_port          = "to_port"
    protocol         = "-1"
    cidr_blocks      = "cidr_bllocks"
    ipv6_cidr_blocks = ["::/0"]
  }

}