# Read existing VPC

/*data "aws_vpc" "existing_vpc" {
  id = "vpc-06ba4c5a47c2c77f2"
}

# Create EC2 inside that VPC
resource "aws_instance" "my_ec2" {
  ami           = "ami-02dfbd4ff395f2a1b"
  instance_type = "t2.micro"

  subnet_id = "subnet-08ac7d8ed50be8b27"

  tags = {
    Name = "example-ec2"
  }
}
*/
