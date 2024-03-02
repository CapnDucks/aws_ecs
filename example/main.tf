module "ecs" {
  source = "../"

  name = "My ECS Cluster"

  tags = {
    Name = "ECS module example"
  }
}
