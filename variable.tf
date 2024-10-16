
variable "ec2_key" {
  default = "MaziKey"
}

variable "aws_region" {
  default = "ap-south-1"
}

variable "az" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "cidr_blocks" {
  type    = string
  default = "10.1.0.0/24"
}

variable "ami" {
  default = "ami-0522ab6e1ddcc7055"
}

variable "instance_type" {
  type    = list(string)
  default = ["t2.micro", "t2.medium"]
}

variable "ingress_ports" {
  type    = list(number)
  default = [443, 22, 80]
}

variable "egress_ports" {
  type    = list(number)
  default = [443, 22, 80]
}

variable "protocol_name" {
  type    = list(string)
  default = ["tcp", "tcp", "tcp"]
}
variable "Instance_name" {
  type    = list(string)
  default = ["Web-Instance", "DB-Instance"]
}

variable "aws_access_key" {
  description = "AWS access key"
  default     = "********"
}

variable "aws_secret_key" {
  description = "AWS secret key"
  default     = "*********"
}
