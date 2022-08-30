## declare providers
provider "aws" {
  region = "ap-northeast-1"
  version = "~>4.0"
  shared_credentials_files = ["/Users/john/.zws/credentials"]
}
