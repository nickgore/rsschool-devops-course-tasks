variable "aws_region" {
  default = "eu-north-1"
}

variable "backend_bucket_name" {
  description = "S3 Bucket name for Terraform state"
  default     = "little-red-bucket-trss-devops-course"
}
