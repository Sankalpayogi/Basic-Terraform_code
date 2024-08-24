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
  default = "MaziKey"
}

variable "ec2_sg" {
  type    = string
  default = "launch-wizard-1"
}

variable "aws_access_key" {
  description = "AWS access key"
  default     = "AKIAZI2LEVLXCUW2MVOP"
}

variable "aws_secret_key" {
  description = "AWS secret key"
  default     = "DpM8DG0HmfiiGxhnYPE3hbAwz3fxRgW0XdBtaff2"
}
