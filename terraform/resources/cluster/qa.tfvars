cluster_name = "eks-cluster"

subnet_ids = [
"subnet-08c5a8c5c9ef32f7e",
"subnet-02e03efe5b8f3f878",
"subnet-085b7da2669dc1674",
"subnet-0fb4f2230b55457f1",
"subnet-0af731d6250296858",
"subnet-0ae6aefac3236a3df",
"subnet-0b00fd383fa719ce2",
"subnet-01d2ff70341c32ee6",
"subnet-0362808bae553d0dd"
]

node_group_name = "eks-cluster-node-group"

subnet_ids_ng = [
"subnet-08c5a8c5c9ef32f7e",
"subnet-02e03efe5b8f3f878",
"subnet-085b7da2669dc1674"
]

instance_types = [
"t3.nano"
]

desired_size = 3
max_size     = 3
min_size     = 3

environment = "qa"
project     = "eks-cluster"