terraform {
  backend "s3" {
    bucket         = "state-bucket-libryo-test"
    key            = "github_actions/tf.state"
    region         = "us-east-1"
    dynamodb_table = "tf-state-lock"
    encrypt        = true
  }
}

provider "aws" {}
