terraform {
  backend "s3" {
    bucket         = "863518420529-tf-state"
    key            = "github_actions/tf.state"
    region         = "us-east-1"
    dynamodb_table = "tf-state-lock"
    encrypt        = true
  }
}

provider "aws" {}
