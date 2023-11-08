output "db_master_instance_id" {
  description = "The instance ID of the master database server"
  value       = aws_db_instance.master.id
}

output "db_slave_instance_id" {
  description = "The instance ID of the slave database server"
  value       = aws_db_instance.slave.id
}

output "db_master_address" {
  description = "The address of the master database server"
  value       = aws_db_instance.master.address
}

output "db_slave_address" {
  description = "The address of the slave database server"
  value       = aws_db_instance.slave.address
}

output "db_master_availability_zone" {
  description = "The availability zone of the master database server"
  value       = aws_db_instance.master.availability_zone
}

output "db_slave_availability_zone" {
  description = "The availability zone of the slave database server"
  value       = aws_db_instance.slave.availability_zone
}