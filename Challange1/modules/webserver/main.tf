module "webserver" {
  source = "../modules/webserver"

  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = module.vpc.private_subnet_id
  vpc_security_group_ids = [module.vpc.security_group_id]
  user_data = file("user_data.sh")

  tags = {
    Name = "webserver"
  }
}

resource "aws_autoscaling_group" "webserver" {
  launch_configuration = aws_launch_configuration.webserver.id
  min_size = 2
  max_size = 2
  desired_capacity = 2
  vpc_zone_identifier = [module.vpc.private_subnet_id]
  target_group_arns = [module.loadbalancer.target_group_arn]

  tags = {
    Name = "webserver"
  }
}

resource "aws_launch_configuration" "webserver" {
  image_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = [module.vpc.security_group_id]
  user_data = file("user_data.sh")

  lifecycle {
    create_before_destroy = true
  }
}