terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-07871d79cd57217f5"  # Specify the Ubuntu AMI ID here
  instance_type = "t2.micro"  # Specify the instance type (e.g., t2.micro, t2.small, etc.)
  key_name      = "south-new-key"  # Specify the key pair name
  security_groups = ["launch-wizard-2"]  # Specify the security group name

  tags = {
    Name = "terraform-instance"
  }
}
