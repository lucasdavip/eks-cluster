variable "cluster_name" {
  type        = string
  description = "Nome do cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Lista de IDs de subnetes"
}
