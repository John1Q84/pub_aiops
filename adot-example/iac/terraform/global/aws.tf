## declare providers
## Assuming  'AWS_ACCESS_KEY_ID' and 'AWS_SECRET_ACCESS_KEY' have been set on env variable for Credentials
terraform {
  required_version = ">= 1.0"
}

provider "aws" {
  region = "ap-northeast-1"
}

data "aws_caller_identity" "current" {}