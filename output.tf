############################################################
# OUTPUTS # 
############################################################

output "kubeconfig" {
  value = "${module.eks_cluster.kubeconfig}"
}

output "config_aws_map" {
 value = "${module.eks_cluster.config_aws_map}"
}

output "cluster_name" {
	description = "The name of the EKS cluster"
	value = "${module.eks_cluster.eks_cluster_name}"
}

#output "repository_name" {
#	value = "${module.ecr_repo.ecr_id}"
#}

#output "repository_url" {
#	value = "${module.ecr_repo.ecr_url}"
#}