##############################################
# VARIABLES # 
##############################################

variable "cluster_name" {
	default   = "nhs_apim_eks_cluster-terraform"
	type	  = "string"
	description = "This is the name of your EKS cluster"
	}

variable "worker_node_name" {
	default   = "nhs_apim_worker_node"
	type	  = "string"
	description = "This is the name of the worker nodes"
	}

variable "aws_region" { 
	default 		= "eu-west-1"
	type			= "string"
	description 	= "The AWS region to deploy the EKS is going to be in Ireland"
	}	


variable "vpc_subnet_cidr" {
	default			= "10.0.0.0/16"
	type			= "string"
	description 	= "The VPC Subnet CIDR"
	}	

variable "workers_instance_type" {
	default		= "m5.xlarge"
	type		= "string"
	description = "What type of EC2 instance the worker node will be "
	}
	
variable "publiccount" {
	default = 2
	type = "string"
	description = "The number of public subnets to be created"
}

variable "privatecount" {
	default = 2
	type = "string"
	description = "The number of private subnets to be created"
}

variable "desired_capacity" { 
	default			= 2
	type			= "string"
	description		= "Autoscaling the node capacity"
	}

variable "max_size" {
	default     = 2
	type		= "string"
	description = "Autoscaling maximum node capacity"
	}

variable "min_size" {
	default		= 1 
	type		= "string"
	description = "Autoscaling Miniumum node capacity"
	}