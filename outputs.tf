output "stream_analytics_output_mssqls_id" {
  description = "Map of id values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_output_mssqls_authentication_mode" {
  description = "Map of authentication_mode values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.authentication_mode if v.authentication_mode != null && length(v.authentication_mode) > 0 }
}
output "stream_analytics_output_mssqls_database" {
  description = "Map of database values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.database if v.database != null && length(v.database) > 0 }
}
output "stream_analytics_output_mssqls_max_batch_count" {
  description = "Map of max_batch_count values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.max_batch_count if v.max_batch_count != null }
}
output "stream_analytics_output_mssqls_max_writer_count" {
  description = "Map of max_writer_count values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.max_writer_count if v.max_writer_count != null }
}
output "stream_analytics_output_mssqls_name" {
  description = "Map of name values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stream_analytics_output_mssqls_password" {
  description = "Map of password values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "stream_analytics_output_mssqls_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "stream_analytics_output_mssqls_server" {
  description = "Map of server values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.server if v.server != null && length(v.server) > 0 }
}
output "stream_analytics_output_mssqls_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.stream_analytics_job_name if v.stream_analytics_job_name != null && length(v.stream_analytics_job_name) > 0 }
}
output "stream_analytics_output_mssqls_table" {
  description = "Map of table values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.table if v.table != null && length(v.table) > 0 }
}
output "stream_analytics_output_mssqls_user" {
  description = "Map of user values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.user if v.user != null && length(v.user) > 0 }
}

