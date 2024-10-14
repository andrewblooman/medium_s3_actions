provider "aws" {
  region = "eu-west-1"

  default_tags {
    tags = {
      Environment = "test"
      Owner       = "team-name"
      Project     = "project-name"
    }
  }
}