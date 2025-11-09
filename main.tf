provider "aws" {
region = "ap-south-2"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0e7938ad51d883574"
instance_type = "t3.small"
key_name = "OnkarHYDkeypair"
vpc_security_group_ids = ["sg-0067493f601890902"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
