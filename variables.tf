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
    - user
EOT

  type = map(object({
    database                  = string
    name                      = string
    resource_group_name       = string
    server                    = string
    stream_analytics_job_name = string
    table                     = string
    authentication_mode       = optional(string) # Default: "ConnectionString"
    max_batch_count           = optional(number) # Default: 10000
    max_writer_count          = optional(number) # Default: 1
    password                  = optional(string)
    user                      = optional(string)
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
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_output_mssql's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: max_batch_count
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: max_writer_count
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: authentication_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

