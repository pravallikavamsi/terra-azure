# Azure Terraform Modular Infrastructure

## Overview

This project deploys a simple Azure infrastructure using **Terraform** with a modular architecture. It follows an enterprise-style folder structure by separating infrastructure into reusable modules and supporting multiple environments (Dev and Prod).

## Features

* Modular Terraform code
* Separate Dev and Prod environments
* Azure Resource Group
* Virtual Network (VNet)
* Subnet
* Network Security Group (NSG)
* Public IP
* Network Interface (NIC)
* Linux Virtual Machine
* Storage Account
* SSH key authentication for the VM
* Remote state support using Azure Storage Backend

## Project Structure

```text
azure-terraform/
│
├── main.tf
├── provider.tf
├── versions.tf
├── backend.tf
├── variables.tf
├── outputs.tf
├── README.md
│
├── modules/
│   ├── resource-group/
│   ├── network/
│   ├── security/
│   └── compute/
│
└── environments/
    ├── dev/
    │   ├── terraform.tfvars
    │   └── backend.tfvars
    │
    └── prod/
        ├── terraform.tfvars
        └── backend.tfvars
```

## Technologies Used

* Terraform
* Microsoft Azure
* Azure Resource Manager (AzureRM Provider)
* Azure CLI
* SSH

## Resources Created

* Resource Group
* Virtual Network
* Subnet
* Network Security Group
* Security Rules (SSH and HTTP)
* Public IP Address
* Network Interface
* Linux Virtual Machine

## Prerequisites

* Terraform installed
* Azure CLI installed
* Azure Subscription
* Azure Storage Account and Blob Container for Terraform remote state
* SSH key pair

## Deployment Steps

1. Clone the repository.
2. Login to Azure.
az login --use-device-code

3. Initialize Terraform.
terraform init -backend-config="environments/dev/backend.tfvars"
4. Validate the configuration.
terraform validate

5. Review the execution plan.

terraform plan -var-file="environments/dev/terraform.tfvars"
6. Deploy the infrastructure.

terraform apply -var-file="environments/dev/terraform.tfvars"
## Connect to the Virtual Machine
ssh -i ~/.ssh/azure_vm_key azureuser@<PUBLIC_IP>

## Destroy the Infrastructure
terraform destroy -var-file="environments/dev/terraform.tfvars"

## Learning Outcomes

* Built reusable Terraform modules.
* Implemented a multi-environment infrastructure (Dev and Prod).
* Created Azure infrastructure using Infrastructure as Code (IaC).
* Configured remote state management.
* Used SSH key authentication for secure VM access.
* Applied Terraform best practices for modular and maintainable infrastructure.
