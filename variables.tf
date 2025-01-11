variable "aws_vpc_cidr" {
    description = "vpc cidr"
    type = string
    default = "10.0.0.0/16"
  
}

variable "aws_public_subnet_cidr" {
    description = "public subnet cidr"
    type = string
    default = "10.0.1.0/24"
  
}

variable "aws_private_subnet_cidr" {
    description = "private subnet cidr"
    type = string
    default = "10.0.2.0/24"
  
}