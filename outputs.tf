output "redis_security_group_id" {
  value = aws_security_group.redis_security_group.id
  description = "ID of the managed Security Group generated for Redis"
}

output "parameter_group" {
  value = aws_elasticache_parameter_group.redis_parameter_group.id
  description = "ID of the Parameter Group to control the runtime properties of Redis nodes and clusters"
}

output "redis_subnet_group_name" {
  value = aws_elasticache_subnet_group.redis_subnet_group.name
  description = "Name of the Redis subnet"

}

output "id" {
  value = aws_elasticache_replication_group.redis.id
  description = "ID of the Redis replication group"
}

output "port" {
  value = var.redis_port
  description = "Redis port (default is 6379)"
}

output "endpoint" {
  value = aws_elasticache_replication_group.redis.primary_endpoint_address
  description = "Redis endpoint address"
}
