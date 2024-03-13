terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-2"
}


resource "aws_lightsail_container_service" "my_container_service" {
  name        = "python-api"
  power       = "nano"
  scale       = 1
  is_disabled = false
}