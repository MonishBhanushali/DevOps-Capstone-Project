resource "aws_security_group" "allow_sg" {
  name        = "allow_sg"
  description = "Allow traffic"
  vpc_id      = aws_vpc.vpc.id  

  ingress {
    description      = "traffic from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #cidr_blocks      = var.main_vpc_cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_sg"
  }
}