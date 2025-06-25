terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
  cloud {
    organization = "rossenzii"
    workspaces {
      name = "rossenzii"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

