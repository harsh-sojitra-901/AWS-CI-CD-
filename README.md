# 🚀 AWS CI/CD Pipeline for Laravel Application Deployment

## 📌 Project Overview

This project demonstrates an end-to-end CI/CD pipeline implementation using AWS services for automated deployment of a Laravel application on a Private EC2 infrastructure.

The architecture follows a production-style deployment approach where the Laravel application is hosted on a private server, accessed securely through a Bastion Host and Nginx reverse proxy.

The CI/CD pipeline automatically builds and deploys the application whenever new code is pushed to the GitLab repository.

---

# 🏗️ Architecture Diagram

<img width="1536" height="1024" alt="Workflow" src="https://github.com/user-attachments/assets/bceb4dcf-d783-4706-80a2-17d704e7e820" />

---

# ⚙️ Tech Stack & Services Used

## ☁️ AWS Services

* Amazon VPC
* Public & Private Subnets
* Internet Gateway
* NAT Gateway
* EC2 Instances
* Amazon RDS MySQL
* Amazon S3
* AWS IAM
* AWS CodePipeline
* AWS CodeBuild
* AWS CodeDeploy
* Amazon CloudWatch

## 🛠️ DevOps & Application Tools

* GitLab
* Git
* Laravel
* PHP
* Composer
* Node.js & NPM
* Nginx Reverse Proxy
* Ubuntu Linux
* Bash Scripting

---

# 🔥 Project Architecture

```text
Developer
   ↓
GitLab Repository
   ↓
AWS CodePipeline
   ↓
AWS CodeBuild
   ↓
Amazon S3 (Build Artifact)
   ↓
AWS CodeDeploy
   ↓
Private EC2 (Laravel Application)
   ↓
Amazon RDS MySQL
```

---

# 🌐 Infrastructure Setup

## VPC Configuration

| Component      | CIDR        |
| -------------- | ----------- |
| VPC            | 10.0.0.0/16 |
| Public Subnet  | 10.0.1.0/24 |
| Private Subnet | 10.0.2.0/24 |

---

# 🔐 Security Architecture

* Public EC2 acts as Bastion Host
* Laravel application runs on Private EC2
* RDS MySQL configured as private database
* IAM roles used for secure AWS service communication
* Nginx reverse proxy used for browser access

---

# 🚀 CI/CD Workflow

## Step 1 — Source Stage

Developer pushes code to GitLab repository.

## Step 2 — Build Stage

AWS CodeBuild:

* downloads source code
* installs dependencies
* prepares build artifact
* uploads artifact to S3

## Step 3 — Deploy Stage

AWS CodeDeploy:

* downloads artifact from S3
* copies files to Private EC2
* executes deployment scripts

## Step 4 — Application Deployment

Deployment scripts:

* install dependencies
* run database migrations
* set permissions
* restart Laravel application

---

# 📂 Important Files

## buildspec.yml
Used by AWS CodeBuild to build application artifacts.
<img width="1068" height="544" alt="Screenshot 2026-05-12 165144" src="https://github.com/user-attachments/assets/f6b744a9-30b8-4c64-959c-ed3fbf5ad4b5" />

## appspec.yml
Used by AWS CodeDeploy to define deployment lifecycle hooks.
<img width="947" height="432" alt="Screenshot 2026-05-12 165228" src="https://github.com/user-attachments/assets/c94b79e4-68ff-420a-863f-fbf2fc110a8d" />

## install.sh
Handles:
* composer install
* npm install
* Laravel migrations
* permission setup
<img width="887" height="698" alt="Screenshot 2026-05-12 165320" src="https://github.com/user-attachments/assets/26cfeda8-82d5-4e0e-a55e-e2841685da03" />

## start.sh
Starts Laravel application server.
<img width="811" height="343" alt="Screenshot 2026-05-12 165344" src="https://github.com/user-attachments/assets/096e96dd-0068-4645-a896-2e6c8415877a" />

---

# 📸 Project Screenshots

## AWS CodePipeline

> <img width="1901" height="462" alt="code-Pipe-line" src="https://github.com/user-attachments/assets/47a0a2fb-e27b-4688-b548-3c14de571129" />

## AWS CodeBuild

> <img width="1578" height="238" alt="code-build" src="https://github.com/user-attachments/assets/3a540e76-4434-4572-a20f-b771f6e401bb" />

## AWS CodeDeploy

> <img width="1565" height="331" alt="Code-deploy" src="https://github.com/user-attachments/assets/a13e2033-2d7e-455a-a7f8-f99867dddbf9" />

## Laravel Website Output

><img width="1901" height="966" alt="Laravel-site" src="https://github.com/user-attachments/assets/22eca5f4-656e-4d35-9ad7-974bea04e420" />

---

# 🧠 Key Learning Outcomes

* AWS CI/CD pipeline implementation
* Private subnet deployment architecture
* Bastion host setup
* Nginx reverse proxy configuration
* AWS IAM role management
* Automated deployment workflows
* Laravel deployment automation
* Linux server administration
* AWS networking concepts

---

# 🔥 Challenges Faced

* Configuring private EC2 access
* Setting up reverse proxy
* IAM permission troubleshooting
* CodeDeploy agent configuration
* Laravel permission issues
* GitLab integration with AWS services

---

# 📈 Future Improvements

* Dockerize Laravel application
* Kubernetes deployment
* SSL/TLS integration
* Terraform Infrastructure as Code
* Monitoring with Prometheus & Grafana
* Auto Scaling implementation
* Load Balancer integration

---

# 👨‍💻 Author

Harsh Sojitra

RHCSA Certified | DevOps & Cloud Enthusiast

---

# 📬 Connect With Me

LinkedIn:

> www.linkedin.com/in/harshsojitra90

---

# ⭐ Conclusion

This project helped me gain practical hands-on experience in:

* AWS Cloud Infrastructure
* CI/CD automation
* Linux administration
* Deployment pipelines
* Secure application architecture

It represents a real-world DevOps deployment workflow using AWS services and modern deployment practices.
