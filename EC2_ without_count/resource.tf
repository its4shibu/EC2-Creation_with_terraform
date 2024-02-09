 #  EC2 instances without count

resource "aws_instance" "single_instance" {
  for_each = toset(var.instance_names) 
  ami           = var.ec2-ami-id
  instance_type = var.ec2_instance_type
  tags = {
    Name = each.key
  }
} 

# Labels for EC2 instances single
 resource "aws_ec2_tag" "ec2_individual_labels" {
  for_each = aws_instance.single_instance

  resource_id   = each.value.id
  key           = "InstanceType"
  value         = "Dev" 
  } 


