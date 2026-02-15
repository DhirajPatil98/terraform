terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  
}

provider "aws" {
  region = "eu-north-1"
}

locals {
  name = dhiraj
}

resource "aws_instance" "first_instace" {

    ami = "ami-042b4708b1d05f512"
    instance_type = var.aws_instance
  
  root_block_device {
    volume_size = var.ec2_details.size
    volume_type = var.ec2_details.type
  }

  tags = {
    "key" = local.name
  }
}

 