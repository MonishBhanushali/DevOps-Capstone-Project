resource "aws_vpc" "vpc" {                # Creating VPC here
   cidr_block       = var.main_vpc_cidr     # Defining the CIDR block use 10.0.0.0/24 for demo
   instance_tenancy = "default"
   tags = {
                Name = "DevOps-vpc"
        }
 }