variable "region" {
  default = "us-east-1"
}
variable "environment" {
  default = "Development"
}
variable "vpc_cidr" {
  description = "VPC cidr block"
  default = "10.0.0.0/16"
}
variable "public_subnet_1_cidr" {
  description = "Public Subnet 1 cidr block"
   default = "10.0.1.0/24"
}
variable "public_subnet_2_cidr" {
  description = "Public Subnet 2 cidr block"
   default = "10.0.2.0/24"
}
variable "public_subnet_3_cidr" {
  description = "Public Subnet 3 cidr block"
   default = "10.0.3.0/24"
}
variable "private_subnet_1_cidr" {
  description = "Private Subnet 1 cidr block"
   default = "10.0.10.0/24"
}
variable "private_subnet_2_cidr" {
  description = "Private Subnet 2 cidr block"
   default = "10.0.11.0/24"
}
variable "private_subnet_3_cidr" {
  description = "Private Subnet 3 cidr block"
   default = "10.0.12.0/23"
}
variable "instance_type" {
default = "t2.medium"
}
variable "instance_ami" {
default = "ami-0c6b1d09930fac512"
}
variable "keyname" {
  default = "ibuchh-key"
}
