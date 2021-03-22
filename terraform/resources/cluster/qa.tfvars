cluster_name = "eks-cluster"

subnet_ids = [
"subnet-002e959ffde286168",
"subnet-02a9ab36eb7bbb268",
"subnet-083e2f80b1e49bd47",
"subnet-00f9aa5b95a56e1cf",
"subnet-053883bf09c5d0f70",
"subnet-0019cce0a27c6a8fc",
"subnet-0fd11da107ec1cd5f",
"subnet-06874082c62281c82",
"subnet-0ffc8be1e17036862"
]

node_group_name = "eks-cluster-node-group"

subnet_ids_ng = [
"subnet-002e959ffde286168",
"subnet-002e959ffde286168",
"subnet-083e2f80b1e49bd47"
]

instance_types = [
"t3.small"
]

desired_size = 3
max_size     = 3
min_size     = 3

environment = "qa"
project     = "eks-cluster"