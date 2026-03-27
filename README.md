# Jenkins-Armageddon-HW
🚀 Jenkins Armageddon Validation Lab

This project is a qualification checkpoint for Class 7, designed to demonstrate readiness to continue into advanced DevOps and Jenkins workflows.

It validates that you can independently build, automate, and integrate infrastructure and CI/CD pipelines using industry-standard tools.

🎯 Objective

This lab serves as a pass/fail milestone:

✅ Pass → Continue into advanced Jenkins + DevSecOps topics
⚠️ Incomplete → Return to foundational track (Single A / catch-up)
🧪 Lab Requirements

You must implement and demonstrate the following:

1. Terraform Infrastructure (AWS S3)
Provision an S3 bucket using Terraform
Upload evidence files:
Screenshots confirming Armageddon completion
Proof that THEO confirmed your pass (directly or via group leader)
2. Repository Validation

Your repository must include:

A link to the Armageddon repo (in .md or .txt)
A Jenkins pipeline hosted in your own GitHub repository

⚠️ Requirements:

❌ Forked repositories do NOT count
❌ Screenshots of extensions do NOT count
✅ If part of a team repo, clearly state your contribution in this README
3. Jenkins Webhook Integration
Demonstrate a successful webhook trigger
Show pipeline execution from GitHub → Jenkins
Include proof (logs/screenshots)
4. Submission Requirements

During class:

Paste your GitHub repo link in the class chat
Ensure your repo contains:
✅ Working Terraform code
✅ Jenkins pipeline
✅ Screenshots and validation proof
✅ Armageddon repo reference

Instructors will review and validate submissions.

📁 Suggested Project Structure
.
├── terraform/
│   └── main.tf              # S3 bucket provisioning
├── jenkins/
│   └── Jenkinsfile          # CI/CD pipeline
├── evidence/
│   ├── screenshots/         # Proof of completion
│   └── webhook-proof/       # Pipeline trigger evidence
├── armageddon-link.md       # Repo reference
└── README.md
⚙️ Example: Terraform S3 Bucket
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "armageddon_lab" {
  bucket = "armageddon-validation-bucket-12345"

  tags = {
    Name        = "Armageddon Lab"
    Environment = "Dev"
  }
}
🔄 Example: Jenkins Pipeline (Webhook Ready)
pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/your-username/your-repo.git'
      }
    }

    stage('Validate') {
      steps {
        sh 'echo "Webhook triggered successfully"'
      }
    }
  }
}
🔐 Professional Expectations

This lab is designed to reflect real-world DevOps standards:

Own your work
Demonstrate implementation, not theory
Show complete, working systems
Document clearly and professionally
📈 Outcome
✅ If Successful
You advance to the next phase:
DevSecOps with Snyk scanning
Led by Charles Manning
⚠️ If Not Yet Ready
You will transition to:
Single A / Catch-Up Track
Access to Class 7 live sessions resumes after completing required catch-up work
🧠 Final Note

This is a performance-based checkpoint.

Execution matters more than intention:

Build it
Prove it
Submit it