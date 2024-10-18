resource "aws_instance" "ec2_server" {
  ami               = var.ami
  instance_type     = var.instance_type[count.index]
  availability_zone = var.az[count.index]
  security_groups   = [aws_security_group.MY-SG.name]
  count             = 2

  tags = {

    name = var.Instance_name[count.index]
  }

}
