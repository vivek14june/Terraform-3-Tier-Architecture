variable "name" {
  description = "The name of the load balancer"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the load balancer will be created"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet where the load balancer will be created"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the load balancer"
  type        = string
}

variable "health_check_target" {
  description = "The target for health checks on the load balancer"
  type        = string
  default     = "HTTP:80/"
}

variable "health_check_interval" {
  description = "The interval between health checks"
  type        = number
  default     = 30
}

variable "health_check_timeout" {
  description = "The timeout period for health checks"
  type        = number
  default     = 5
}

variable "unhealthy_threshold" {
  description = "The number of consecutive failed health checks before marking an instance as unhealthy"
  type        = number
  default     = 2
}

variable "healthy_threshold" {
  description = "The number of consecutive successful health checks before marking an instance as healthy"
  type        = number
  default     = 2
}