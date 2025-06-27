resource "aws_instance" "bastion" {
  ami                         = "ami-0becc523130ac9d5d"
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public[0].id
  associate_public_ip_address = true
  security_groups             = [aws_security_group.bastion_sg.id]
  key_name                    = var.key_name

  tags = {
    Name = "bastion-host"
  }
}
