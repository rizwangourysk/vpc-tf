terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }


 backend "s3" {
    bucket         = "tws-junoon-state-bucket3"
    key            = "terraform.tfstate"
    region         = "ap-south-2"
    dynamodb_table = "tws-junoon-state-table"
  }
}