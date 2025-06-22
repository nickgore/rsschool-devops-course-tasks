resource "aws_instance" "bastion" {
  ami                         = var.bastion_ami_id # Amazon Linux 2 or Ubuntu
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public[0].id
  associate_public_ip_address = true
  security_groups             = [aws_security_group.bastion_sg.id]
  key_name                    = var.key_name

  tags = {
    Name = "bastion-host"
  }
}
