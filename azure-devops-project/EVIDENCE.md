# Harness + Terraform Azure Infrastructure — Evidence

This page is an evidence index for the portfolio project. It links to the actual pipeline definitions, Terraform source, and Kubernetes manifests in this repository.

## Project summary

- Harness pipeline provisions Azure infrastructure with modular Terraform.
- Azure resources created for the lab include a resource group, virtual network, subnet, Azure Container Registry (ACR), and Azure Kubernetes Service (AKS).
- An NGINX demo was separately verified running on AKS and exposed using a Kubernetes LoadBalancer service.
- The Harness application-deployment pipeline is still in progress; it is not presented as completed.

## Source and implementation evidence

1. [Harness Terraform infrastructure pipeline YAML](https://github.com/pkpavan21pk-arch/My-portfolio/blob/main/azure-devops-project/harness-terraform-pipeline.yaml)
2. [Harness application deployment pipeline YAML](https://github.com/pkpavan21pk-arch/My-portfolio/blob/main/azure-devops-project/harness-deployment-pipeline.yamal)
3. [Terraform root configuration](https://github.com/pkpavan21pk-arch/My-portfolio/blob/main/azure-devops-project/infra/main.tf)
4. [Terraform modules and provider configuration](https://github.com/pkpavan21pk-arch/My-portfolio/tree/main/azure-devops-project/infra)
5. [Kubernetes Deployment manifest](https://github.com/pkpavan21pk-arch/My-portfolio/blob/main/azure-devops-project/k8s/deployment.yaml)
6. [Kubernetes LoadBalancer Service manifest](https://github.com/pkpavan21pk-arch/My-portfolio/blob/main/azure-devops-project/k8s/service.yaml)
7. [Project README](https://github.com/pkpavan21pk-arch/My-portfolio/blob/main/azure-devops-project/README.md)

## Runtime evidence to capture

For a stronger portfolio presentation, add screenshots of:
- Successful Harness infrastructure pipeline execution, including the Terraform apply summary.
- Azure Portal showing the resource group and AKS cluster.
- kubectl get nodes showing the AKS node as Ready.
- kubectl get pods,svc showing the NGINX pod Running and the LoadBalancer service.
- The NGINX welcome page opened in a browser.

**Screenshot note:** These screenshots are not currently stored in this repository. This page links to the implementation files and lists the runtime evidence still to upload; it does not claim that screenshots are already available.
