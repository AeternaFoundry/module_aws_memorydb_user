output "memorydb_users_id" {
  description = "Map of id values across all memorydb_users, keyed the same as var.memorydb_users"
  value       = { for k, v in aws_memorydb_user.memorydb_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "memorydb_users_access_string" {
  description = "Map of access_string values across all memorydb_users, keyed the same as var.memorydb_users"
  value       = { for k, v in aws_memorydb_user.memorydb_users : k => v.access_string if v.access_string != null && length(v.access_string) > 0 }
}
output "memorydb_users_arn" {
  description = "Map of arn values across all memorydb_users, keyed the same as var.memorydb_users"
  value       = { for k, v in aws_memorydb_user.memorydb_users : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "memorydb_users_authentication_mode" {
  description = "Map of authentication_mode values across all memorydb_users, keyed the same as var.memorydb_users"
  value       = { for k, v in aws_memorydb_user.memorydb_users : k => one(v.authentication_mode) if v.authentication_mode != null && length(v.authentication_mode) > 0 }
  sensitive   = true
}
output "memorydb_users_minimum_engine_version" {
  description = "Map of minimum_engine_version values across all memorydb_users, keyed the same as var.memorydb_users"
  value       = { for k, v in aws_memorydb_user.memorydb_users : k => v.minimum_engine_version if v.minimum_engine_version != null && length(v.minimum_engine_version) > 0 }
}
output "memorydb_users_region" {
  description = "Map of region values across all memorydb_users, keyed the same as var.memorydb_users"
  value       = { for k, v in aws_memorydb_user.memorydb_users : k => v.region if v.region != null && length(v.region) > 0 }
}
output "memorydb_users_tags" {
  description = "Map of tags values across all memorydb_users, keyed the same as var.memorydb_users"
  value       = { for k, v in aws_memorydb_user.memorydb_users : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "memorydb_users_tags_all" {
  description = "Map of tags_all values across all memorydb_users, keyed the same as var.memorydb_users"
  value       = { for k, v in aws_memorydb_user.memorydb_users : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "memorydb_users_user_name" {
  description = "Map of user_name values across all memorydb_users, keyed the same as var.memorydb_users"
  value       = { for k, v in aws_memorydb_user.memorydb_users : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

