provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      environment = terraform.workspace
      owner       = "CapnDucks"
      project     = "ECS Module"
      Name        = "ECS Demo"
      terraform   = true
      repo        = "https://github.com/CapnDucks/aws_ecs"
    }
  }
}
