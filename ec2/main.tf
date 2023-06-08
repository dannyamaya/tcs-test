resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"  # Replace with existing AMI
  instance_type = var.instance_type
  subnet_id              = var.subnet_id
  user_data              = file("${path.module}/user_data.sh")

  root_block_device {
    volume_size = var.ebs_size
  }

  ebs_block_device {
    device_name = "/dev/sdf"
    volume_size = var.ebs_size
    delete_on_termination = true
  }

  tags = {
    Name = "example-instance"
    Commpany = "TCS"
  }
}