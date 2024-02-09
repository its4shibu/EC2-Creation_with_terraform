

# count variable for EC2 instance
resource "aws_instance" "ec2_instance" {
  count         = var.instance_count
  ami           = var.ec2-ami-id
  instance_type = var.ec2_instance_type
  tags = {
    Name = "${var.instance_names[count.index]}"
  }
}
# Label for all EC2 instances
 resource "aws_ec2_tag" "ec2_instances_label" {
  count = var.instance_count

  resource_id   = aws_instance.ec2_instance[count.index].id
  key           = "Env"
  value         = "Prod"
} 




