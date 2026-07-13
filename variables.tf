variable "stream_analytics_output_mssqls" {
  description = <<EOT
Map of stream_analytics_output_mssqls, attributes below
Required:
    - database
    - name
    - resource_group_name
    - server
    - stream_analytics_job_name
    - table
Optional:
    - authentication_mode
    - max_batch_count
    - max_writer_count
    - password
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
    - user
EOT

  type = map(object({
    database                       = string
    name                           = string
    resource_group_name            = string
    server                         = string
    stream_analytics_job_name      = string
    table                          = string
    authentication_mode            = optional(string)
    max_batch_count                = optional(number)
    max_writer_count               = optional(number)
    password                       = optional(string)
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    user                           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        length(v.stream_analytics_job_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        length(v.resource_group_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        length(v.server) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        length(v.database) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        length(v.table) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        v.user == null || (length(v.user) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        v.password == null || (length(v.password) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        v.max_batch_count == null || (v.max_batch_count >= 1 && v.max_batch_count <= 1073741824)
      )
    ])
    error_message = "must be between 1 and 1073741824"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_mssqls : (
        v.max_writer_count == null || (v.max_writer_count >= 0 && v.max_writer_count <= 1)
      )
    ])
    error_message = "must be between 0 and 1"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

