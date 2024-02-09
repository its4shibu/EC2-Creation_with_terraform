# Create EC2 instances

resource "aws_instance" "single_instance" {
  ami           = var.ec2-ami-id
  instance_type = var.ec2_instance_type
  
}

