variable "webserver_count" {
  description = "Number of web servers to create"
  default     = 2
}

variable "webserver_instance_type" {
  description = "Instance type for the web servers"
  default     = "t3.large"
}

variable "webserver_ami" {
  description = "AMI ID for the web servers"
}

variable "webserver_subnet_ids" {
  description = "Subnet IDs for the web servers"
  type        = list(string)
}

variable "webserver_security_group_ids" {
  description = "Security group IDs for the web servers"
  type        = list(string)
}

variable "webserver_key_name" {
  description = "Key pair name for the web servers"
}

variable "webserver_user_data" {
  description = "User data to provide when launching the web servers"
  default     = ""
}