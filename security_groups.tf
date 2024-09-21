resource "aws_security_group" "MY-SG" {
  name = "My-SG"


  dynamic "ingress" {

    for_each = var.ingress_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = var.protocol_name[ingress.key]
      cidr_blocks = [var.cidr_blocks]
    }

  }


  dynamic "egress" {

    for_each = var.egress_ports
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = var.protocol_name[egress.key]
      cidr_blocks = ["0.0.0.0/0"]
    }

  }



#*************************************** Expanded SG *******************************
#resource "aws_security_group" "ec2_security_group" {
#   name        = "ec2_sg"
#   description = "Allow SSH inbound traffic"

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # Allows SSH from anywhere
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # Allows SSH from anywhere
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "TF_SG"
#   }
# }
