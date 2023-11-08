variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "db_subnet_cidr" {
  description = "The CIDR block for the database subnet"
  default     = "10.0.3.0/24"
}

variable "webserver_instance_type" {
  description = "The instance type for the web servers"
  default     = "t3.large"
}

variable "appserver_instance_type" {
  description = "The instance type for the application servers"
  default     = "c6.large"
}

variable "db_instance_type" {
  description = "The instance type for the database servers"
  default     = "db.r6.large"
}

variable "db_master_username" {
  description = "The username for the master database"
}

variable "db_master_password" {
  description = "The password for the master database"
}

variable "db_slave_username" {
  description = "The username for the slave database"
}

variable "db_slave_password" {
  description = "The password for the slave database"
}