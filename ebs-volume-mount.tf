/*
provider aws{
    region = "us-east-1"
}

resource "aws_instance" "my-ec2"{
    ami = "ami-0f3caa1cf4417e51b"
    instance_type = "t2.micro"
    

    tags ={
        name = "ec2-instance"
    }
}
*/