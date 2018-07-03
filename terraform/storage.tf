resource "azurerm_storage_account" "smb_volume_service" {
  name                     = "${var.env_short_name}smb"
  resource_group_name      = "${azurerm_resource_group.pcf_services_resource_group.name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}