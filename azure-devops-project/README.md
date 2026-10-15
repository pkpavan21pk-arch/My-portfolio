# Azure DevOps CI/CD Portfolio Project

## Overview
A hands-on DevOps project using Terraform, Azure Container Registry (ACR), Azure Kubernetes Service (AKS), Kubernetes, and Azure DevOps Pipelines.

## Project Structure
- app/ - NGINX application and Dockerfile
- infra/ - Terraform infrastructure and reusable modules
- k8s/ - Kubernetes Deployment and Service manifests
- pipelines/ - Azure DevOps pipeline YAML

## Planned Workflow
1. Store source code in GitHub.
2. Provision Azure infrastructure using Terraform.
3. Build the container image and push it to ACR.
4. Deploy the application to AKS through Azure DevOps.
5. Validate the application deployment.

## Security
Terraform state, plan files, and local variable files are excluded from Git.
