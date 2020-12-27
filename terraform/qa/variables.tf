#vpc
variable "cidr_block" {
  default = "10.20.0.0/16"
}

variable "env" {
  default = "qa-test"
}

variable "project_name" {
  default = "cluster_monitoring"
}

#subnet

variable "subnet_az_a" {
  default = "us-east-1a"
}

variable "subnet_az_b" {
  default = "us-east-1b"
}

variable "subnet_cidr_pub1a" {
  default = "10.20.1.0/24"
}

variable "subnet_cidr_pub1b" {
  default = "10.20.3.0/24"
}

variable "subnet_cidr_priv1a" {
  default = "10.20.2.0/24"
}

variable "subnet_cidr_priv1b" {
  default = "10.20.4.0/24"
}

variable "subnet_cidr_priv2a" {
  default = "10.20.6.0/24"
}

variable "subnet_cidr_priv2b" {
  default = "10.20.8.0/24"
}

variable "subnet_name_pub1a" {
  default = "subnet_pub_1a"
}

variable "subnet_name_pub1b" {
  default = "subnet_pub_1b"
}

variable "subnet_name_priv1a" {
  default = "subnet_priv_1a"
}

variable "subnet_name_priv1b" {
  default = "subnet_priv_1b"
}

variable "subnet_name_priv2a" {
  default = "subnet_priv_2a"
}

variable "subnet_name_priv2b" {
  default = "subnet_priv_2b"
}
