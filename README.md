# rsschool-devops-course-tasks

## Network Infrastructure Setup (TASK 2)


### Components

1. **VPC**
2. **Subnets**

   * Public Subnets (2 across different AZs) in `network/subnets.tf`.
   * Private Subnets (2 across different AZs) in `network/subnets.tf`.

3. **Internet Gateway**
4. **Route Tables**

   * Public route table in `network/route_tables.tf`.
   * Private route table & NAT Gateway in `network/nat.tf` to enable private-to-Internet traffic.


5. **Security**

   * Security Groups in `network/security_groups.tf`:

     * `bastion_sg` for SSH access to bastion host.
     * `private_sg` for internal and outbound traffic from private subnets.
    
   * Network ACL in `network/network_acls.tf`.

6. **Bastion Host**
   * EC2 instance in a public subnet defined in `network/bastion.tf`.
   * Provides secure SSH access to private subnet instances.

### Prerequisites
Provide actual values via `network/terraform.tfvars` or GitHub Secrets in CI:

```hcl
your_ip_cidr   = "0.0.0.0/0"         # For testing only
bastion_ami_id = "ami-03caf91bb3d81b843"
key_name       = "test-key"
```

### Running Terraform Locally

```bash
cd network
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -auto-approve -var-file="terraform.tfvars"
```
