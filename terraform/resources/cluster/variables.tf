variable "cluster_name" {
  type        = string
  description = "Nome do cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Lista de IDs de subnetes"
}

variable "node_group_name" {
  type        = string
  description = "Nome do node group"
}

variable "subnet_ids_ng" {
  type        = list(string)
  description = "Lista de subnets para subirem os nodes"
}

variable "instance_types" {
  type        = list(string)
  description = "Tipos de instancias associadas ao node group"
}

variable "desired_size" {
  type        = number
  description = "capacidade desejada no cluster"
}

variable "max_size" {
  type        = number
  description = "Numero maximo de nós"
}
variable "min_size" {
  type        = number
  description = "Numero minimo de nós"
}
