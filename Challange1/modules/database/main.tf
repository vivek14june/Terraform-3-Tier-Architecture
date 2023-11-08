provider "aws" {
  region = var.region
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "${var.project_name}-db-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.project_name}-db-subnet-group"
  }
}

resource "aws_db_instance" "master" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = "${var.project_name}-master"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [var.security_group_id]
  availability_zone       = var.availability_zone1
  multi_az               = false
  publicly_accessible    = false
  skip_final_snapshot    = true
}

resource "aws_db_instance" "slave" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = "${var.project_name}-slave"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [var.security_group_id]
  availability_zone       = var.availability_zone2
  replicate_source_db     = aws_db_instance.master.id
  publicly_accessible     = false
  skip_final_snapshot     = true
}