# rsschool-devops-course-tasks

## Infrastructure Setup

### S3 Bucket

- Bucket is defined using Terraform with versioning enabled.
- Encryption applied: `AES256`.

### Terraform Configuration

- Provider: AWS
- Bucket name and region are defined as variables in `variables.tf`

## 🚀 Usage

### Prerequisites

- Terraform CLI installed locally
- AWS CLI configured with IAM user with sufficient permissions
- For github actions: Corresponding role and identity provider configured in AWS Console

### Running Terraform Locally

```bash
terraform init
terraform plan
terraform apply
```
