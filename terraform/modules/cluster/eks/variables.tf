variable "cluster_name" {
  type        = string
  description = "Nome do cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Lista de IDs de subnetes"
}

variable "environment" {
  type        = string
  description = "Nome do ambiente"

}

variable "project" {
  type        = string
  description = "Nome do projeto"
}
