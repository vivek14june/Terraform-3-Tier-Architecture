variable "appserver_instance_type" {
  description = "The instance type to use for the application servers"
  type        = string
  default     = "c6.large"
}

variable "appserver_ami" {
  description = "The AMI to use for the application servers"
  type        = string
}

variable "appserver_key_name" {
  description = "The key pair name to use for SSH access to the application servers"
  type        = string
}

variable "appserver_subnet_ids" {
  description = "The IDs of the subnets where the application servers will be launched"
  type        = list(string)
}

variable "appserver_security_group_ids" {
  description = "The IDs of the security groups to associate with the application servers"
  type        = list(string)
}

variable "appserver_asg_min_size" {
  description = "The minimum size of the Auto Scaling group for the application servers"
  type        = number
  default     = 1
}

variable "appserver_asg_max_size" {
  description = "The maximum size of the Auto Scaling group for the application servers"
  type        = number
  default     = 2
}

variable "appserver_asg_desired_capacity" {
  description = "The desired capacity of the Auto Scaling group for the application servers"
  type        = number
  default     = 2
}