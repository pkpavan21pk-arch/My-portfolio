# Azure DevOps CI/CD Pipeline — NGINX on AKS

A hands-on Cloud and DevOps project demonstrating automated application delivery using Azure DevOps, Azure Container Registry (ACR), Azure Kubernetes Service (AKS), Terraform, Docker, and Kubernetes.

The application is packaged as an NGINX container, built in ACR, and deployed to AKS through an Azure Pipelines YAML pipeline.

## Project Overview

**Objective:** Build an automated CI/CD workflow that takes application code from GitHub and deploys it to a Kubernetes cluster running on Microsoft Azure.

**Project Status:** Successfully deployed and verified.

### Technology Stack

- **Source Control:** Git, GitHub
- **CI/CD:** Azure DevOps Pipelines, YAML
- **Infrastructure as Code:** Terraform
- **Cloud Platform:** Microsoft Azure
- **Containerization:** Docker, NGINX
- **Container Registry:** Azure Container Registry (ACR)
- **Container Orchestration:** Azure Kubernetes Service (AKS)
- **Deployment and Validation:** Kubernetes manifests, kubectl
- **Application:** HTML served by NGINX

## Architecture

```text
Developer
   |
   v
GitHub Repository
   |
   v
Azure DevOps Pipeline
   |
   +---- Build Stage
   |        |
   |        v
   |   Azure Container Registry
   |        |
   |        v
   +---- Deploy Stage
            |
            v
       Azure Kubernetes
       Service (AKS)
            |
            v
       NGINX Deployment
       2 Replicas
            |
            v
       LoadBalancer Service
            |
            v
       Web Application
```

Terraform is used to provision the Azure infrastructure separately from the application build-and-deploy pipeline.

## Repository Structure

```text
azure-devops-project/
├── app/
│   ├── Dockerfile
│   └── index.html
├── infra/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── pipelines/
│   └── azure-pipelines.yml
├── .gitignore
└── README.md
```

## CI/CD Workflow

1. **Source control:** Application and pipeline code are maintained in GitHub.
2. **Pipeline trigger:** A push to the `main` branch triggers Azure Pipelines.
3. **Build:** The pipeline uses `az acr build` to build the container image in Azure Container Registry.
4. **Image publishing:** The built image is tagged with the Azure DevOps build ID and stored in ACR.
5. **Deployment:** The pipeline obtains AKS credentials and applies the Kubernetes Deployment and Service manifests.
6. **Rollout validation:** Kubernetes rollout status is checked to confirm that the deployment completes successfully.
7. **Application access:** A Kubernetes LoadBalancer Service exposes the NGINX application over HTTP.

## Infrastructure Provisioned

Terraform configuration covers the Azure infrastructure required for the application, including:

- Azure Resource Group
- Virtual Network and subnet
- Azure Container Registry
- Azure Kubernetes Service

Infrastructure provisioning and application deployment are maintained as separate workflows.

## Deployment Validation

The completed deployment was verified using Kubernetes commands.

Check the pods:

```bash
kubectl get pods
```

Check the deployment:

```bash
kubectl get deployment nginx-app
```

Check the public service endpoint:

```bash
kubectl get service nginx-app-service
```

**Verified result:**
- Two NGINX pods running successfully.
- Both deployment replicas available (`2/2`).
- Kubernetes LoadBalancer assigned a public IP.
- Application page accessible through the public HTTP endpoint.
- Azure DevOps Build and Deploy stages completed successfully.

## Security Practices

- Terraform state, plan files, and local variable files are excluded from Git.
- Secrets and local credentials should not be committed to the repository.
- Azure authentication is configured through an Azure DevOps service connection.
- Azure permissions should follow the principle of least privilege.

## Key Learnings

- Building an Azure DevOps multi-stage YAML pipeline.
- Building and publishing container images using ACR.
- Deploying applications to AKS using Kubernetes manifests.
- Configuring Kubernetes Deployments, replicas, and LoadBalancer Services.
- Provisioning Azure infrastructure with reusable Terraform modules.
- Troubleshooting image tags, pod startup errors, and deployment rollouts.
- Validating application availability after deployment.

## Future Improvements

- Add automated testing and image vulnerability scanning.
- Introduce separate development and production environments.
- Add monitoring and alerting using Azure Monitor.
- Improve deployment security with tighter role-based access control.
- Integrate infrastructure validation and Terraform plan review into CI/CD.

## Project Links

- **GitHub Repository:** https://github.com/pkpavan21pk-arch/My-portfolio/tree/main/azure-devops-project
- **Portfolio Website:** https://pkpavan21pk-arch.github.io/My-portfolio/

---

*Built as a hands-on Cloud and DevOps portfolio project to demonstrate infrastructure automation, containerization, CI/CD, and Kubernetes deployment on Microsoft Azure.*