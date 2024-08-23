variable "aws_region" {
  default = "ap-south-1"
}
variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  type    = string
  default = "ami-0522ab6e1ddcc7055"
}

variable "ec2_key" {
  default = "newkey"
}

variable "ec2_sg" {
  type    = string
  default = "launch-wizard-1"
}