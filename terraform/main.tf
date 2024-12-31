module "eks_auto_mode" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.31.6"

  cluster_name                   = var.service
  cluster_version                = local.cluster_version
  cluster_endpoint_public_access = true

  enable_cluster_creator_admin_permissions = true

  cluster_compute_config = {
    enabled    = true
    node_pools = ["general-purpose"]
  }

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

}