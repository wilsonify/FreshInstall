variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}


variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "cluster"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "node-group"
}

variable "eks_subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
  default     = ["subnet-3fa0ce75", "subnet-5a568d06"]
}

variable "eks_security_group_ids" {
  description = "Security group IDs for the EKS cluster"
  type        = list(string)
  default     = ["sg-03d1519c73bb12ff4"]
}

variable "eks_node_role_name" {
  description = "Name of the IAM role for the EKS nodes"
  type        = string
  default     = "eksNodeRole"
}

variable "eks_cluster_role_name" {
  description = "Name of the IAM role for the EKS cluster"
  type        = string
  default     = "eksClusterRole"
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 0
}