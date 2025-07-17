provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "demo" {
  name     = "demo-cluster"
  role_arn = "arn:aws:iam::123456789012:role/fake-eks-role"

  vpc_config {
    subnet_ids = ["subnet-aaaa1111", "subnet-bbbb2222"]
  }

  tags = {
    Name = "EKS-POC"
  }
}
