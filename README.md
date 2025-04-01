# Terraform Project

## Overview
This repository contains Terraform configuration files for provisioning and managing cloud infrastructure. It includes scripts for setting up AWS services such as S3, IAM, and web hosting.

## Directory Structure
```
.
├── .terraform/               # Terraform working directory (created after init)
├── .gitignore                # Git ignore file
├── terraform.tfstate         # Terraform state file (tracks infrastructure)
├── terraform.tfstate.backup  # Backup of state file
├── .terraform.lock.hcl       # Terraform dependency lock file
├── main.tf                   # Main Terraform configuration file
├── variables.tf              # Variable definitions for Terraform
├── provider.tf               # Provider configuration (AWS, etc.)
├── output.tf                 # Outputs from Terraform execution
├── iam.tf                    # IAM roles and policies configuration
├── index.html                # Web application homepage
├── error.html                # Custom error page for S3 hosting
├── profile.png               # Image file (possibly for website branding)
```

## Files and Their Purpose
- **main.tf**: Defines the main resources for the infrastructure.
- **variables.tf**: Contains input variables for Terraform to parameterize configurations.
- **provider.tf**: Specifies provider details, such as AWS.
- **output.tf**: Defines output values for the Terraform execution.
- **iam.tf**: Manages AWS IAM roles and policies.
- **index.html**: The main page for the website.
- **error.html**: Custom error page for handling errors in static website hosting.
- **profile.png**: An image file that may be used within the website.
- **terraform.tfstate**: Tracks the state of the infrastructure.
- **terraform.tfstate.backup**: Backup of the Terraform state file.

## How to Use
1. **Initialize Terraform**
   ```sh
   terraform init
   ```

2. **Plan the Infrastructure**
   ```sh
   terraform plan
   ```

3. **Apply the Configuration**
   ```sh
   terraform apply
   ```

4. **Destroy the Infrastructure (if needed)**
   ```sh
   terraform destroy
   ```

## Notes
- Ensure you have AWS credentials configured properly before running Terraform.
- Modify `variables.tf` as needed to customize resource configurations.
- The static website is hosted on an S3 bucket, and IAM roles define access policies.

## Contact
For any issues, feel free to raise a pull request or an issue in the repository.

