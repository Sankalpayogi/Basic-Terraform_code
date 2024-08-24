resource "aws_instance" "EC2_Server" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.ec2_key
  security_groups = [aws_security_group.ec2_security_group.name]

  tags = {
    Name = "TF_EC2"
  }
}




