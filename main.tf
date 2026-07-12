data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.stream_analytics_output_mssqls : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_stream_analytics_output_mssql" "stream_analytics_output_mssqls" {
  for_each = var.stream_analytics_output_mssqls

  database                  = each.value.database
  name                      = each.value.name
  resource_group_name       = each.value.resource_group_name
  server                    = each.value.server
  stream_analytics_job_name = each.value.stream_analytics_job_name
  table                     = each.value.table
  authentication_mode       = each.value.authentication_mode
  max_batch_count           = each.value.max_batch_count
  max_writer_count          = each.value.max_writer_count
  password                  = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  user                      = each.value.user
}

