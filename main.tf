resource "aws_memorydb_user" "memorydb_users" {
  for_each = var.memorydb_users

  access_string = each.value.access_string
  user_name     = each.value.user_name
  region        = each.value.region
  tags          = each.value.tags
  tags_all      = each.value.tags_all

  authentication_mode {
    passwords = each.value.authentication_mode.passwords
    type      = each.value.authentication_mode.type
  }
}

