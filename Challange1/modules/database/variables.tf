variable "db_instance_type" {
  description = "The instance type of the RDS instance"
  default     = "db.r6.large"
}

variable "db_allocated_storage" {
  description = "The allocated storage in gigabytes"
  default     = 20
}

variable "db_name" {
  description = "The database name"
  default     = "mydb"
}

variable "db_username" {
  description = "Username for the master DB user"
}

variable "db_password" {
  description = "Password for the master DB user"
}

variable "db_subnet_group_name" {
  description = "DB subnet group name"
}

variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate"
  type        = list(string)
}

variable "availability_zone" {
  description = "The AZ where the RDS instance will be created"
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default     = false
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  default     = 7
}

variable "backup_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled"
  default     = "07:00-09:00"
}

variable "maintenance_window" {
  description = "The window to perform maintenance in"
  default     = "Mon:00:00-Mon:03:00"
}