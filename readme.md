🚀 Jenkins Armageddon Validation Lab

Class 7 DevOps + Jenkins Qualification Submission

This repository demonstrates my ability to progress into advanced DevOps and Jenkins workflows by delivering working infrastructure, CI/CD automation, and validated proof of completion.

🎯 Objective

This lab serves as a pass/fail checkpoint to verify:

⚙️ Infrastructure provisioning with Terraform
🔁 CI/CD pipeline automation with Jenkins
🔗 Webhook-triggered pipeline execution
📸 Proof of Armageddon completion and validation
📁 Repository Structure
.
├── Armageddon-Proof/
│   ├── Theo-Armageddon-Pass-Proof.png   # ✅ Proof of pass confirmation
│   └── armageddon-link.txt              # 🔗 Armageddon repo reference
├── Lab Evidence/
│   ├── Screenshot-*.png                 # 📸 Validation + pipeline proof
├── S3-Infra/
│   ├── 1-auth.tf                        # 🔐 AWS provider + backend config
│   ├── 2-main.tf                        # ☁️ S3 bucket + object uploads
│   └── Jenkinsfile                      # 🔁 CI/CD pipeline definition
├── .gitignore
└── README.md
🧱 What This Project Delivers
🔹 1. Armageddon Validation Proof

Located in Armageddon-Proof/:

📸 Theo pass confirmation screenshot
🔗 Link to Armageddon repo
https://github.com/Brotherhood-Of-Steel-Cloud-AI-DevOps/BOS-ARMAGEDDON-LABS-1-3
🔹 2. Terraform Infrastructure (AWS S3)

Located in S3-Infra/

⚙️ 1-auth.tf
Defines AWS provider (hashicorp/aws)
Uses Terraform backend:
🪣 Bucket: thaibucket-alpha2
🌎 Region: us-east-1
📦 State path: jenkins/terraform.tfstate
☁️ 2-main.tf

Creates:

🪣 S3 bucket (bucket_prefix = "jenkins-bucket-")
♻️ force_destroy = true for cleanup
📤 Uploads:
Armageddon repo link file
Theo pass screenshot

✅ Result: Infrastructure + proof artifacts are fully automated

🔹 3. Jenkins Pipeline

Located in:

S3-Infra/Jenkinsfile
🔁 Pipeline Stages
📥 Checkout
⚙️ Terraform Init
✅ Terraform Validate
🎨 Terraform Format Check
📊 Terraform Plan
🚀 Terraform Apply
🧨 Optional Destroy (manual approval)
🔐 Environment Configuration
AWS_DEFAULT_REGION = 'us-east-1'
TF_IN_AUTOMATION   = 'true'
Uses Jenkins credential ID: Jenkins
Integrates with GitHub webhook triggers
🔹 4. Evidence & Validation

Located in Lab Evidence/

Includes:

📸 Terraform execution proof
📸 Jenkins pipeline success
📸 Webhook trigger validation
⚙️ How to Run
🧪 Run Terraform Locally
cd S3-Infra
terraform init
terraform validate
terraform fmt -check
terraform plan -out=tfplan
terraform apply -auto-approve tfplan
🔁 Run Jenkins Pipeline
Create a Jenkins pipeline job
Connect to this repo (SCM)
Configure AWS credentials (Jenkins)
Add GitHub webhook → Jenkins
Trigger via commit or manually
✅ Validation Checklist
Requirement	Status
Terraform S3 bucket provisioned	✅
Evidence uploaded to S3	✅
Jenkins pipeline executes	✅
Webhook trigger works	✅
Armageddon proof included	✅
Repo is original (not forked)	✅
⚠️ Ownership Statement
🚫 This is not a forked repository
🧠 All work is independently implemented
🤝 Any team contribution (if applicable) is clearly stated
📈 Outcome
✅ Passed

Eligible to move forward into:

🔐 DevSecOps pipelines
🛡️ Snyk security scanning
⚡ Advanced Jenkins workflows
⚠️ Not Passed
Redirected to Single A / Catch-up track
Must complete foundational work before re-entry