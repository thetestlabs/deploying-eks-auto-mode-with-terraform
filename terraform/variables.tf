variable "region" {
  description = "(Required) The AWS Region to create the Terraform State Backend resources in."
  type        = string
  default     = "eu-west-2"

}

variable "terraform_stack" {
  description = "The name of the Terraform stack, which should be the name of the repository where the Terraform configuration is stored"
  type        = string
  default     = "deploy-eks-auto-mode-with-terraform"

}

variable "environment" {
  description = "The environment that resources are being deployed to, for example Dev/Prod etc"
  type        = string
  default     = "dev"

}

variable "service" {
  description = "The service that resources are being deployed to support, for example the application name"
  type        = string
  default     = "ttl-blog"

}