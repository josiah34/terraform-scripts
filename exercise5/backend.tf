terraform {
  backend "s3" {
    bucket = "terra-state-jg"
    key    = "terraform/backend"
    region = "us-east-2"
  }
}