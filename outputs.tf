output "stream_analytics_output_mssqls_id" {
  description = "Map of id values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.id }
}
output "stream_analytics_output_mssqls_authentication_mode" {
  description = "Map of authentication_mode values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.authentication_mode }
}
output "stream_analytics_output_mssqls_database" {
  description = "Map of database values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.database }
}
output "stream_analytics_output_mssqls_max_batch_count" {
  description = "Map of max_batch_count values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.max_batch_count }
}
output "stream_analytics_output_mssqls_max_writer_count" {
  description = "Map of max_writer_count values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.max_writer_count }
}
output "stream_analytics_output_mssqls_name" {
  description = "Map of name values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.name }
}
output "stream_analytics_output_mssqls_password" {
  description = "Map of password values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.password }
  sensitive   = true
}
output "stream_analytics_output_mssqls_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.resource_group_name }
}
output "stream_analytics_output_mssqls_server" {
  description = "Map of server values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.server }
}
output "stream_analytics_output_mssqls_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.stream_analytics_job_name }
}
output "stream_analytics_output_mssqls_table" {
  description = "Map of table values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.table }
}
output "stream_analytics_output_mssqls_user" {
  description = "Map of user values across all stream_analytics_output_mssqls, keyed the same as var.stream_analytics_output_mssqls"
  value       = { for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : k => v.user }
}

