output "stream_analytics_output_mssqls" {
  description = "All stream_analytics_output_mssql resources"
  value       = azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls
  sensitive   = true
}
output "stream_analytics_output_mssqls_authentication_mode" {
  description = "List of authentication_mode values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.authentication_mode]
}
output "stream_analytics_output_mssqls_database" {
  description = "List of database values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.database]
}
output "stream_analytics_output_mssqls_max_batch_count" {
  description = "List of max_batch_count values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.max_batch_count]
}
output "stream_analytics_output_mssqls_max_writer_count" {
  description = "List of max_writer_count values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.max_writer_count]
}
output "stream_analytics_output_mssqls_name" {
  description = "List of name values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.name]
}
output "stream_analytics_output_mssqls_password" {
  description = "List of password values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.password]
  sensitive   = true
}
output "stream_analytics_output_mssqls_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.resource_group_name]
}
output "stream_analytics_output_mssqls_server" {
  description = "List of server values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.server]
}
output "stream_analytics_output_mssqls_stream_analytics_job_name" {
  description = "List of stream_analytics_job_name values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.stream_analytics_job_name]
}
output "stream_analytics_output_mssqls_table" {
  description = "List of table values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.table]
}
output "stream_analytics_output_mssqls_user" {
  description = "List of user values across all stream_analytics_output_mssqls"
  value       = [for k, v in azurerm_stream_analytics_output_mssql.stream_analytics_output_mssqls : v.user]
}

