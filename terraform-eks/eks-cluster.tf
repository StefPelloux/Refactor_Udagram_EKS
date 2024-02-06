







module "allow_eks_access_iam_policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-policy"
  version = "5.3.1"

  name          = "allow-eks-access"
  create_policy = true

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "eks:DescribeCluster",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}














module "eks" {
  source       = "terraform-aws-modules/eks/aws"
  
  version = "~> 19.21"

  cluster_name    = "SPX-udagram"
  cluster_version = "1.27"


  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets

  create_kms_key = false
  cluster_encryption_config = {}

  create_iam_role = true

  enable_irsa = true
  

  eks_managed_node_group_defaults = {
    disk_size = 50
  }


  eks_managed_node_groups = {
    general = {
      desired_size = 1
      min_size     = 1
      max_size     = 2

      labels = {
        role = "general"
      }

      instance_types = ["t3.small"]
      capacity_type  = "ON_DEMAND"
    }


  }

  tags = {
    Environment = "SPX-Udagram"
  }





  # cluster_addons = {
  #   coredns = {
  #     # most_recent = true
  #     resolve_conflicts_on_create = "OVERWRITE"
  #   }
  #   kube-proxy = {
  #     most_recent = true
  #     resolve_conflicts_on_create = "OVERWRITE"
  #   }
  #   # vpc-cni = {
  #   #   most_recent = true
  #   #   resolve_conflicts_on_create = "OVERWRITE"
  #   # }
  # }



  # cluster_security_group_additional_rules = {
  #   ingress_nodes_ephemeral_ports_tcp = {
  #     description                = "Nodes on ephemeral ports"
  #     protocol                   = "tcp"
  #     from_port                  = 1025
  #     to_port                    = 65535
  #     type                       = "ingress"
  #     source_node_security_group = true
  #   }
  #   # Test: https://github.com/terraform-aws-modules/terraform-aws-eks/pull/2319

  #   ingress_source_security_group_id = {
  #     description              = "Ingress from another computed security group"
  #     protocol                 = "tcp"
  #     from_port                = 22
  #     to_port                  = 22
  #     type                     = "ingress"
  #     source_security_group_id = aws_security_group.additional.id
  #   }
  # }




}