resource "aws_subnet" "public" {
  count = var.num_public_subnets
  cidr_block = element(var.public_subnets_cidr, count.index)
  vpc_id = var.vpc_id
  availability_zone = element(var.availability_zones, count.index)
  # Other public subnet settings
}

resource "aws_subnet" "private" {
  count = var.num_private_subnets
  cidr_block = element(var.private_subnets_cidr, count.index)
  vpc_id = var.vpc_id
  availability_zone = element(var.availability_zones, count.index)
  # Other private subnet settings
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}
