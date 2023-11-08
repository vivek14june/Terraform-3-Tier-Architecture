output "webserver_autoscaling_group_name" {
  description = "The name of the webserver autoscaling group"
  value       = aws_autoscaling_group.webserver.name
}

output "webserver_security_group_id" {
  description = "The ID of the security group associated with the webservers"
  value       = aws_security_group.webserver.id
}

output "webserver_subnet_ids" {
  description = "The IDs of the subnets where the webservers are located"
  value       = aws_subnet.webserver.*.id
}