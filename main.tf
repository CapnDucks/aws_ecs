resource "aws_ecs_cluster" "this" {
  name = var.name

  setting {
    name  = "containerInsights"
    value = var.container_insights
  }

  configuration {
    execute_command_configuration {
      #kms_key_id = module.kms.arn

      logging = "OVERRIDE"
      log_configuration {
        cloud_watch_encryption_enabled = true
        cloud_watch_log_group_name     = "/aws/ecs/cluster/${var.name}"
      }
    }
  }

  tags = var.tags
}

resource "aws_ecs_cluster_capacity_providers" "this" {
  cluster_name = aws_ecs_cluster.this.name

  capacity_providers = var.capacity_providers

  dynamic "default_capacity_provider_strategy" {
    for_each = var.default_capacity_provider_strategy
    iterator = strategy

    content {
      capacity_provider = strategy.value["capacity_provider"]
      weight            = lookup(strategy.value, "weight", null)
      base              = lookup(strategy.value, "base", null)
    }
  }
}

resource "aws_ecs_account_setting_default" "this" {
  name  = "taskLongArnFormat"
  value = "enabled"
}
