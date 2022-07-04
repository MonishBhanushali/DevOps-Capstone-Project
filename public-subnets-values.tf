resource "aws_subnet" "publicsubnets" {    # Creating Public Subnets
   vpc_id =  aws_vpc.vpc.id
   cidr_block = "${var.public_subnets}"        # CIDR block of public subnets
   availability_zone = "us-east-1a"
   map_public_ip_on_launch = true
   tags = {
     "Name" = "public-subnet-DevOps"
   }
 }

 resource "aws_route_table" "PublicRT" {    # Creating RT for Public Subnet
    vpc_id =  aws_vpc.vpc.id
         route {
    cidr_block = "0.0.0.0/0"               # Traffic from Public Subnet reaches Internet via Internet Gateway
    gateway_id = aws_internet_gateway.IGW.id
     }
     tags = {
     "Name" = "public-subnet-DevOps-RT"
   }
 }

 resource "aws_route_table_association" "PublicRTassociation" {
    subnet_id = aws_subnet.publicsubnets.id
    route_table_id = aws_route_table.PublicRT.id
 }