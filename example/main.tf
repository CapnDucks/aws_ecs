module "ecs" {
  source = "../"

  kms_key_alias      = "KMS-ALIAS"
  name               = "ECS-NAME"
  cluster_name       = "CLUSTER-NAME"
  container_insights = true

  tags = {
    Name = "ECS module example"
  }
}
