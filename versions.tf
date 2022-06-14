terraform {

  cloud {
    organization = "TEST1-NEW"

    workspaces {
      name = "anju1sentinel"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  required_version = ">= 0.14.0"
}
