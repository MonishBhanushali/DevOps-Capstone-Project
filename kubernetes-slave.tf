resource "aws_instance" "k-slave" {
   ami= "ami-0729e439b6769d6ab"
        count = 2
        instance_type = "t2.micro"
        subnet_id = aws_subnet.publicsubnets.id
        key_name= "key"
        #user_data = "${file("controller.sh")}"
        security_groups = [aws_security_group.allow_sg.id]
        tags = {
                Name = "k-slave"
        }
}