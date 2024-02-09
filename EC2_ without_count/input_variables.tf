variable "aws_region" {
    description = "Region in which aws resource to be created"
    type =  string
    default = "ap-south-1"
}
# variable for Ami
variable "ec2-ami-id"{
    description = "ami-id"
    type = string
    default =  "ami-02a2af70a66af6dfb"
}
# instance type
 variable "ec2_instance_type"{
    description = "instance type"
    type = string
    default = "t2.micro"
 }

#  variable for the count of EC2 instances
variable "instance_count" {
    description = "count"
    type = number
    default = 2 
}

# labels for individual instances
variable "instance_names" {
  default = ["Instance1"] 
}

