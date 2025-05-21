terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}
provider "aws" {
  region = var.region
}

resource "random_id" "rand_id" {
  byte_length = 8
}

resource "aws_s3_bucket" "my-bucket"{
  bucket = "tf-cloud-auto-${random_id.rand_id.hex}"

}




