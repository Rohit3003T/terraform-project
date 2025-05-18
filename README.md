# Terraform Secure EC2 and S3 Deployment

## Project Overview

This Terraform project deploys an **EC2 instance** inside a **private subnet** and an **S3 bucket** with secure configurations following best security practices.

---

## Architecture

- **EC2 Instance**
  - Launched in a private subnet (no public IP, no direct internet access)
  - Attached to a Security Group allowing only necessary inbound/outbound traffic
  - Uses an IAM role with least privilege for accessing S3 (read-only access)
- **S3 Bucket**
  - Versioning enabled
  - Server-side encryption enabled (SSE-S3)
  - Public access blocked with bucket policies and block public access settings enabled
  - Logging enabled for S3 access (if applicable)

---

## Security Best Practices Implemented

- **No Hardcoded Secrets or Access Keys**
  - EC2 instance uses IAM role for secure access instead of embedded credentials
- **Security Groups**
  - Minimal and restrictive inbound/outbound rules to limit exposure
- **Least Privilege IAM Role**
  - IAM role attached to EC2 grants only read-only access to the S3 bucket
- **Encryption & Logging**
  - S3 bucket versioning and encryption enabled by default for data protection
  - Public access blocked explicitly to prevent accidental data exposure

---

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/Rohit3003T/terraform-project.git
   cd terraform-project
