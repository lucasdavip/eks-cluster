#-- vpc --------------------------------------------------

cidr_block              = "10.20.0.0/16"
environment             = "develop"
project                 = "cluster_eks"
subnet_az_a             = "us-east-1a"
subnet_az_b             = "us-east-1b"
subnet_az_c             = "us-east-1c"

#-- subnet_cidr ------------------------------------------

subnet_cidr_pub1a       = "10.20.224.0/20"
subnet_cidr_pub1b       = "10.20.208.0/20"
subnet_cidr_pub1c       = "10.20.192.0/20"

subnet_cidr_priv1a      = "10.20.16.0/20"
subnet_cidr_priv1b      = "10.20.32.0/20"
subnet_cidr_priv1c      = "10.20.48.0/20"

subnet_cidr_priv2a      = "10.20.64.0/20"
subnet_cidr_priv2b      = "10.20.80.0/20"
subnet_cidr_priv2c      = "10.20.96.0/20"

#-- subnet_name ------------------------------------------

subnet_name_pub1a       = "subnet_pub_1a"
subnet_name_pub1b       = "subnet_pub_1b"
subnet_name_pub1c       = "subnet_pub_1c"

subnet_name_priv1a      = "subnet_priv_1a"
subnet_name_priv1b      = "subnet_priv_1b"
subnet_name_priv1c      = "subnet_priv_1c"

subnet_name_priv2a      = "subnet_priv_2a"
subnet_name_priv2b      = "subnet_priv_2b"
subnet_name_priv2c      = "subnet_priv_2c"
