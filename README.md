
## Jenkins Armageddon Validation Lab

This repository is my Class 7 validation submission for DevOps and Jenkins. It demonstrates that I can provision AWS infrastructure with Terraform, automate deployment steps through Jenkins, and provide evidence that the required Armageddon validation criteria were completed.

## Purpose

The goal of this lab is to prove readiness to continue in the advanced Class 7 DevOps/Jenkins track. This submission includes:

- Terraform code to provision an S3 bucket
- Jenkins pipeline code to validate and apply Terraform
- Armageddon proof artifacts
- Screenshot evidence showing successful execution and validation
- A direct reference to the original Armageddon lab repository

## Repository Structure ##

![[Pasted image 20260326205238.png]]
## What This Project Contains

### 1. Armageddon proof

The `Armageddon-Proof/` directory contains:

- `Theo-Armageddon-Pass-Proof.png` as proof that Theo said I passed Armageddon
- `armageddon-link.txt`, which contains the original Armageddon repo link

The linked Armageddon repository is:

`https://github.com/Brotherhood-Of-Steel-Cloud-AI-DevOps/BOS-ARMAGEDDON-LABS-1-3`

### 2. Lab evidence

The `Lab Evidence/` directory contains screenshots captured on March 26, 2026, documenting the required validation steps for this submission, including infrastructure, pipeline, and webhook-related proof.

### 3. Terraform infrastructure

The Terraform code lives in `S3-Infra/`.

#### `1-auth.tf`

This file defines:

- the AWS provider source as `hashicorp/aws`
- version constraint `~> 6.0`
- an S3 backend for remote state
- backend bucket `thaibucket-alpha2`
- state path `jenkins/terraform.tfstate`
- AWS region `us-east-1`

#### `2-main.tf`

This file provisions:

- an S3 bucket using `bucket_prefix = "jenkins-bucket-"`
- `force_destroy = true` for cleanup flexibility
- an uploaded text object at `Armageddon-Proof/armageddon-link.txt`
- an uploaded PNG object at `Armageddon-Proof/Theo-Armageddon-Pass-Proof.png`

This means the infrastructure code does not just create a bucket; it also uploads the required proof artifacts into that bucket.

### 4. Jenkins pipeline

The Jenkins pipeline is located at `S3-Infra/Jenkinsfile`.

It includes these stages:

- `Checkout`
- `Terraform Init`
- `Terraform Validate`
- `Terraform Format`
- `Terraform Apply`
- `Optional Destroy`

The pipeline also sets:

- `AWS_DEFAULT_REGION = 'us-east-1'`
- `TF_IN_AUTOMATION = 'true'`

AWS credentials are referenced through Jenkins credentials binding using the credential ID `Jenkins`.

The pipeline performs:

- source checkout from SCM
- `terraform init`
- `terraform validate`
- `terraform fmt -check`
- `terraform plan -out=tfplan`
- `terraform apply -auto-approve tfplan`

It also includes a manual approval step for optional teardown with `terraform destroy -auto-approve`.

## How to Run This Project

### Terraform locally

From the repository root:

``` bash
cd S3-Infra
terraform init
terraform validate
terraform fmt -check
terraform plan -out=tfplan
terraform apply -auto-approve tfplan
```

### Jenkins pipeline

To run this in Jenkins:

1. Create a pipeline job that points to this repository.
2. Configure AWS credentials in Jenkins using the credential ID `Jenkins`.
3. Set webhook integration from GitHub to Jenkins.
4. Trigger the pipeline from a GitHub push or manual build.
5. Confirm successful execution in Jenkins and capture screenshots in `Lab Evidence/`.

## Validation Summary

This repository satisfies the required submission format by including:

- original work in my own GitHub repository
- Terraform code for S3 infrastructure
- Jenkins pipeline automation
- Armageddon pass proof
- link to the Armageddon repo
- screenshot evidence for validation
- webhook/pipeline execution evidence stored in the lab evidence section

