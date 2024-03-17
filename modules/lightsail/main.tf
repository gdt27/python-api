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

resource "aws_lightsail_container_service_deployment_version" "my_container_service_deployment" {
  container {
    container_name = "python-api"
    image          = ":python-api.python-api.1"

    ports = {
      5000 = "HTTP"
    }
  }

  public_endpoint {
    container_name = "python-api"
    container_port = 5000

    health_check {
      healthy_threshold   = 2
      unhealthy_threshold = 2
      timeout_seconds     = 2
      interval_seconds    = 5
      path                = "/"
      success_codes       = "200-499"
    }
  }

  service_name = aws_lightsail_container_service.my_container_service.name
}