output "ecs_cluster_arn" {
  description = "ARN of the ECS Cluster"
  #value      = concat(aws_ecs_cluster.this.*.arn, [""])[0]
  value       = aws_ecs_cluster.this.arn
}

output "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  value       = local.name
}

output  "kms_key_arn" {
  value = module.kms.kms_key["arn"]
}
