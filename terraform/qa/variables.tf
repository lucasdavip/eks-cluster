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
variable "subnet_cidr_pub1a" {
  default = "10.20.1.0/24"
}

variable "subnet_az_1a" {
  default = "us-east-1a"
}

variable "subnet_name_pub1a" {
  default = "subnet_pub_1a"
}
