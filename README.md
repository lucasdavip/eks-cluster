# AUTOMATED CLUSTER KUBERNETES PROJECT

### Description

This project aims to automate the creation of an EKS cluster (AWS Elastic Kubernetes Service) for any environment need such as development and production. One of the objectives is also to promote a controlled and monitored environment from the beginning.
I used several automation tools like terraform, python and shell script.


## VPC

VPC (Private Virtual Network) was designed to promote a high availability, secure and automated environment.
Containing three availability zones and dividing the workload between instances in the different availability zones, if one of the "AZ" is affected the instances are scalling between the other two regions.
This scenario is ideal for workloads that require autonomous availability.

![VPC](https://github.com/lucasdavip/Cluster_Monitorado/blob/master/images/AWS_VPC.png)
