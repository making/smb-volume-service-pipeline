output "subscription_id" {
  sensitive = true
  value     = "${var.subscription_id}"
}

output "tenant_id" {
  sensitive = true
  value     = "${var.tenant_id}"
}

output "client_id" {
  sensitive = true
  value     = "${var.client_id}"
}

output "client_secret" {
  sensitive = true
  value     = "${var.client_secret}"
}

output "location" {
  value     = "${var.location}"
}

output "resource_group_name" {
  value     = "${azurerm_resource_group.pcf_services_resource_group.name}"
}

output "sql_server_administrator" {
  value     = "${var.sql_server_administrator}"
}

output "sql_server_administrator_password" {
  sensitive = true
  value     = "${random_string.sql_server_password.result}"
}

output "sql_server_hostname" {
  value     = "${azurerm_sql_server.sql_server.fully_qualified_domain_name}"
}

output "sql_server_database" {
  value     = "${azurerm_sql_database.smb_volume_service.name}"
}

output "smb_volume_storage_account" {
  value     = "${azurerm_storage_account.smb_volume_service.name}"
}