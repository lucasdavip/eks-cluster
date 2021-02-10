cluster_name = "eks-cluster"

subnet_ids = [
"subnet-0dd1e6953c5c5ec85",
"subnet-0bceb55d4c8be8844",
"subnet-014f2781f8644f2c0",
"subnet-0ea46b4958dba6866",
"subnet-098c848612f970ce9",
"subnet-02f312d0ad5d8c331",
"subnet-00c67b636cf9451cb",
"subnet-0f6a1e9685321af0d",
"subnet-01d39fc44b71c3183"
]

node_group_name = "eks-cluster-node-group"

subnet_ids_ng = [
"subnet-0dd1e6953c5c5ec85",
"subnet-0bceb55d4c8be8844",
"subnet-014f2781f8644f2c0"
]

instance_types = [
"t3.nano"
]

desired_size = 1
max_size     = 1
min_size     = 1
