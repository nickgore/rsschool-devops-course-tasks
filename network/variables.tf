variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-north-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "availability_zones" {
  default = ["eu-north-1a", "eu-north-1b"]
}

variable "your_ip_cidr" {
  description = "Your IP address in CIDR format (e.g. 1.2.3.4/32)"
  type        = string
}

variable "bastion_ami_id" {
  description = "AMI ID for bastion host"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}
