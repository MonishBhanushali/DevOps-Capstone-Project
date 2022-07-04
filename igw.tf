 resource "aws_internet_gateway" "IGW" {    # Creating Internet Gateway
    vpc_id =  aws_vpc.vpc.id               # vpc_id will be generated after we create VPC
    tags = {
                Name = "DevOps-vpc-igw"
        }
 }