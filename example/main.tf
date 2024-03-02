module "ecs" {
  source = "../"

  name          = "My ECS Cluster"
  kms_key_alias = "ecs-key-alias"

  tags = {
    Name = "ECS module example"
  }
}
