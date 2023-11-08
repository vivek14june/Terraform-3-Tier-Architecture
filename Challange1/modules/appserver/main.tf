resource "aws_launch_configuration" "app" {
  name          = "app-launch-configuration"
  image_id      = var.app_ami_id
  instance_type = var.app_instance_type

  security_groups = [var.app_security_group_id]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "app" {
  desired_capacity   = 2
  max_size           = 5
  min_size           = 1
  launch_configuration = aws_launch_configuration.app.id
  vpc_zone_identifier  = var.private_subnet_ids

  tag {
    key                 = "Name"
    value               = "app-server"
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}