resource "random_string" "sql_server_password" {
  length = 16
  special = true
}

resource "azurerm_sql_server" "sql_server" {
  name                         = "${var.env_name}-sql-server"
  resource_group_name          = "${azurerm_resource_group.pcf_services_resource_group.name}"
  location                     = "${azurerm_resource_group.pcf_services_resource_group.location}"
  version                      = "12.0"
  administrator_login          = "${var.sql_server_administrator}"
  administrator_login_password = "${random_string.sql_server_password.result}"
}

resource "azurerm_sql_database" "smb_volume_service" {
  name                         = "smb_volume_service"
  resource_group_name          = "${azurerm_resource_group.pcf_services_resource_group.name}"
  location                     = "${azurerm_resource_group.pcf_services_resource_group.location}"
  server_name                  = "${azurerm_sql_server.sql_server.name}"
  edition                      = "${var.sql_server_edition}"
}


resource "azurerm_sql_firewall_rule" "smb_volume_service" {
  name                         = "smb_volume_service"
  resource_group_name          = "${azurerm_resource_group.pcf_services_resource_group.name}"
  server_name                  = "${azurerm_sql_server.sql_server.name}"
  start_ip_address             = "0.0.0.0"
  end_ip_address               = "0.0.0.0"
}