output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.vpc.private_subnet_id
}

output "loadbalancer_dns_name" {
  description = "The DNS name of the load balancer"
  value       = module.loadbalancer.dns_name
}

output "webserver_asg_name" {
  description = "The name of the webserver autoscaling group"
  value       = module.webserver.asg_name
}

output "appserver_asg_name" {
  description = "The name of the appserver autoscaling group"
  value       = module.appserver.asg_name
}

output "database_master_instance_id" {
  description = "The instance ID of the master database server"
  value       = module.database.master_instance_id
}

output "database_slave_instance_id" {
  description = "The instance ID of the slave database server"
  value       = module.database.slave_instance_id
}