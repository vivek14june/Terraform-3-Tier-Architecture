# Terraform 3-Tier Architecture Project

This project uses Terraform to create a 3-tier architecture on AWS. The architecture includes a load balancer in a public subnet, two web servers and two application servers in private subnets with autoscaling enabled, and two database servers in private subnets with one master in one availability zone (AZ) and one slave in another AZ.

## Project Structure

The project is structured as follows:

- `main.tf`: Main Terraform configuration file. Calls the modules for VPC, load balancer, web servers, application servers, and database servers.
- `variables.tf`: Declares the variables used in the main configuration file.
- `outputs.tf`: Declares the outputs of the main configuration file.
- `modules/`: Contains the modules for VPC, load balancer, web servers, application servers, and database servers. Each module has its own `main.tf`, `variables.tf`, and `outputs.tf` files.

## Modules

- `vpc`: Creates a VPC.
- `loadbalancer`: Creates a load balancer in the public subnet.
- `webserver`: Creates two web servers in a private subnet with autoscaling enabled.
- `appserver`: Creates two application servers in a private subnet with autoscaling enabled.
- `database`: Creates two database servers in a private subnet, with one master in one AZ and one slave in another AZ.

## Usage

To use this project, you need to have Terraform installed. You can then clone this repository and run `terraform init` to initialize your Terraform workspace. This will download the necessary provider plugins.

Next, you can run `terraform plan` to see what changes Terraform will make. If everything looks good, you can run `terraform apply` to apply the changes.

Please note that you will need to provide your own AWS credentials. You can do this by setting the `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` environment variables, or by configuring the AWS CLI with `aws configure`.

## Variables

The following variables need to be set in the `variables.tf` file:

- `aws_region`: The AWS region to create the resources in.
- `vpc_cidr`: The CIDR block for the VPC.
- `public_subnet_cidr`: The CIDR block for the public subnet.
- `private_subnet_cidr`: The CIDR block for the private subnet.
- `database_subnet_cidr`: The CIDR block for the database subnet.

## Outputs

The `outputs.tf` file declares the following outputs:

- `vpc_id`: The ID of the created VPC.
- `public_subnet_id`: The ID of the created public subnet.
- `private_subnet_id`: The ID of the created private subnet.
- `database_subnet_id`: The ID of the created database subnet.


