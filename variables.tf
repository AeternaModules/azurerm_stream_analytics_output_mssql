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
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_output_mssql's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: stream_analytics_job_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: server
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: database
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: table
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: user
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: password
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: max_batch_count
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: max_writer_count
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: authentication_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

