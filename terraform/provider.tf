provider "aws" {

}

terraform {
  backend "s3" {
    bucket         = "terra-resources-gt01"
    region         = "us-east-1"
    key            = "github-actions/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "terra-resources-gt-lock"
  }
}
