/*
provider aws {
    region = "us-east-1"
}

resource "aws_instance" "my-ec2"{
    ami = "ami-0f3caa1cf4417e51b"
    instance_type = "t2.micro"
}

resource "aws_ebs_volume" "my-ebs-volume"{
    availability_zone = aws_instance.my-ec2.availability_zone
    size = 10
}
resource "aws_volume_attachment" "ebs-volume"{
    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.my-ebs-volume.id
    instance_id = aws_instance.my-ec2.id
}
*/
