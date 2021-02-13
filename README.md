# CLUSTER KUBERNETES EKS

### Descrição

Este projeto visa automatizar a criação de um cluster EKS (AWS Elastic Kubernetes Service). Um dos objetivos é também promover um ambiente controlado e monitorado desde o início.
Utilizei várias ferramentas de automação como terraform, Ansible, Helm, python e shell script.


## VPC

A VPC (Private Virtual Network) foi projetada para promover um ambiente de alta disponibilidade, seguro e automatizado.
Contendo três zonas de disponibilidade e dividindo a carga de trabalho entre as instâncias nas diferentes zonas de disponibilidade, caso uma das "AZ" for afetada, as instâncias nas outras zonas de disponibilidade vão estar respondendo as requisições.
Este cenário é ideal para cargas de trabalho que requerem auta disponibilidade.

![VPC](https://github.com/lucasdavip/Cluster_Monitorado/blob/master/images/AWS_VPC.png)



continua ...