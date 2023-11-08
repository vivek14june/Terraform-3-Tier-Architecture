output "appserver_autoscaling_group_name" {
  description = "The name of the autoscaling group for the application servers"
  value       = aws_autoscaling_group.appserver.name
}

output "appserver_security_group_id" {
  description = "The ID of the security group for the application servers"
  value       = aws_security_group.appserver.id
}

output "appserver_subnet_ids" {
  description = "The IDs of the subnets for the application servers"
  value       = aws_subnet.appserver.*.id
}