provider "aws" {
  region = "us-west-2"
}

data "aws_availability_zones" "available" {
}

data "aws_region" "current" {}

# Define VPC
data "aws_vpc" "default" {
  default = true
}

data "aws_key_pair" "tier_3key" {
  key_name = "tier_3key"
}

variable "private_subnets" {
  default = {
    "cp_301_302_sg_prod_v3"  = 255
  }
}
