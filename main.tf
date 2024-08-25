resource "aws_instance" "EC2_Batch_Server" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.ec2_key
  security_groups = [aws_security_group.ec2_security_group.name]

  tags = {
    Name = "TF_EC2_BTH_Server_1"
  }
}

resource "aws_instance" "EC2_App_Server" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.ec2_key
  security_groups = [aws_security_group.ec2_security_group.name]

  tags = {
    Name = "TF_EC2_App_Server_2"
  }
}
