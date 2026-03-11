
/*
provider aws{
    region = "us-east-1"
}

resource "aws_vpc" "my-vpc"{
    cidr_block = "10.0.0.0/16"

    tags = {
        name = "my-vpc"
    }
}

resource "aws_subnet" "my-subnet"{
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"



    tags = {
        name = "my-subnet"
    }
}

resource "aws_internet_gateway" "my-igw"{
        vpc_id = aws_vpc.my-vpc.id

        tags = {
            name = "my-igw"
        }

}
resource "aws_route_table" "aws-rt"{
        vpc_id = aws_vpc.my-vpc.id

    route {
            cidr_block = "0.0.0.0/0"
            gateway_id = aws_internet_gateway.my-igw.id
        }

        tags= {
            name = "my-rt"
        }
}
resource "aws_route_table_association" "myrta"{
    subnet_id = aws_subnet.my-subnet.id
    route_table_id = aws_route_table.aws-rt.id
}
    


resource "aws_security_group" "my-security"{
    vpc_id = aws_vpc.my-vpc.id

    ingress {
        from_port = 22
        to_port   = 22
        protocol  = "tcp"
        cidr_blocks= ["0.0.0.0/0"]
    }
    ingress{
        from_port = 80
        to_port   = 80
        protocol  = "tcp"
        cidr_blocks= ["0.0.0.0/0"]
    }

    egress{
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }

}

resource "aws_instance" "my-ec2-instance"{
    ami = "ami-02dfbd4ff395f2a1b"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.my-subnet.id
    vpc_security_group_ids = [aws_security_group.my-security.id]
    associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              systemctl enable httpd
              cd /var/www/html/
              echo "<h1>Hello from Terraform + Apache!</h1>" > index.html
              EOF


    tags = {
        name = "my-ec2"
    }
}
*/



    
