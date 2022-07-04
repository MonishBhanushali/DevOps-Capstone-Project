resource "aws_instance" "k-master" {
  ami= "ami-0729e439b6769d6ab"
        count = 1
        instance_type = "t2.medium"
        subnet_id = aws_subnet.publicsubnets.id
        key_name= "key"
        user_data = "${file("kmaster.sh")}"
        security_groups = [aws_security_group.allow_sg.id]
        tags = {
                Name = "k-master"
        }
}