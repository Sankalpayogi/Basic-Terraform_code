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
  default     = "AKIAZI2LEVLXBN7XNAWQ"
}

variable "aws_secret_key" {
  description = "AWS secret key"
  default     = "wwOZ6OZWFth+iP572cu7FEXVfM+hdclGFEC1W7B0"
}