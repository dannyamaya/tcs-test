variable "instance_type" {
  description = "Instance type for EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID of the private subnet"
  type        = string
  default     = "subnet-1234567890abcdef0"
}

variable "ebs_size" {
  description = "Size of the EBS volume in GB"
  type        = number
  default     = 20
}

variable "availability_zone" {
  description = "Availability zone for subnets"
  type        = string
  default     = "us-west-2a"
}