variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
}

variable "public_subnet_1_cidr" {
  description = "CIDR for the Public Subnet 1"
}

variable "public_subnet_2_cidr" {
  description = "CIDR for the Public Subnet 2"
}

variable "public_subnet_3_cidr" {
  description = "CIDR for the Public Subnet 3"
}

variable "private_subnet_1_cidr" {
  description = "CIDR for the Private Subnet 1"
}

variable "private_subnet_2_cidr" {
  description = "CIDR for the Private Subnet 2"
}

variable "private_subnet_3_cidr" {
  description = "CIDR for the Private Subnet 3"
}

variable "tags" {
  type = "map"
}

variable "region" {}
variable "region_name" {}
variable "az1" {}
variable "az2" {}
variable "az3" {}

variable "instance_type" {}
