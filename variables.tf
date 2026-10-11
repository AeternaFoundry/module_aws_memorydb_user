variable "memorydb_users" {
  description = <<EOT
Map of memorydb_users, attributes below
Required:
    - access_string
    - user_name
    - authentication_mode (block):
        - passwords (optional)
        - type (required)
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    access_string = string
    user_name     = string
    region        = optional(string)
    tags          = optional(map(string))
    tags_all      = optional(map(string))
    authentication_mode = object({
      passwords = optional(set(string))
      type      = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.memorydb_users : (
        v.authentication_mode.passwords == null || (alltrue([for x in v.authentication_mode.passwords : length(x) >= 16 && length(x) <= 128]))
      )
    ])
    error_message = "must be between 16 and 128 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

