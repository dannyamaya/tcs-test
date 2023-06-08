resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example-vpc"
  }
}

resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.example.id
  cidr_block              = "10.0.0.0/24"  # Modify the CIDR block for the private subnet
  availability_zone       = var.availability_zone

  tags = {
    Name = "example-private-subnet"
  }
}

output "vpc_id" {
  value = aws_vpc.example.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}
