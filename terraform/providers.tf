provider "aws" {
  region = var.region

  default_tags {
    tags = {
      "Technical:TerraformStack" = var.terraform_stack
      "Technical:Environment"    = var.environment
      "Technical:Service"        = var.service
    }
  }

}