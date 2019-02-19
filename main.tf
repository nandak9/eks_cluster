##################################################################
# PROVIDERS # 
##################################################################

provider "aws" {
	region = "${var.aws_region}"
	}
	
provider "http" {}

################################################
# MODULES
################################################

module "eks_cluster" {
	source			= "./module/eks_cluster"
	
	cluster_name		= "${var.cluster_name}"
	worker_node_name	= "${var.worker_node_name}"
	
	workers_instance_type  	= "${var.workers_instance_type}"
	desired_capacity    	= "${var.desired_capacity}"
	
	max_size		= "${var.max_size}"
	min_size		= "${var.min_size}"
	
	vpc_subnet_cidr     = "${var.vpc_subnet_cidr}"
	publiccount			= "${var.publiccount}"
	privatecount		= "${var.privatecount}"
	}

#module "ecr_repo" { 
#	source 		= "./module/ecr"	
#}