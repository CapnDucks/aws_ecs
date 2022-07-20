provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      environment = terraform.workspace
      owner       = "ownerTag"
      project     = "projectTag"
      Name        = "nameTag"
      terraform   = true
    }
  }
}
