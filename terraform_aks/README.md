# Prereqs:
 - Azure cli
 - terraform
 - vs code + azure terraform plugin ( optional)
 - kubectl

Terraform Provider: A Terraform provider is a plugin that interacts with a specific cloud or service API to provision and manage resources. It allows Terraform to communicate with and control the resources offered by that service. ( like with azure, awz, gcp...)

ssh.tf: This file typically contains configurations related to SSH key pairs, such as generating SSH keys or defining SSH access settings for virtual machines or instances.

main.tf: This is the main Terraform configuration file where you define the infrastructure resources you want to provision. It contains the declarations of resources like virtual machines, networks, storage, etc., along with their configurations.


variables.tf: In this file, you declare input variables that can be used throughout your Terraform configuration. These variables allow you to parameterize your configurations, making them more reusable and easier to manage. ( like azure vm instance name, resource group name, aks cluster name...)

outputs.tf: This file contains output variables, which are values that Terraform can export after applying your configuration. Output variables can be useful for obtaining information about the infrastructure that was provisioned, such as IP addresses, DNS names, or other attributes of resources.

## files setup:

 - create terraform provider 
 - create ssh.tf 
 - create main.tf 
 - create variables.tf 
 - create outputs.tf 


## steps to setup aks cluster using terraform

- az login
- 