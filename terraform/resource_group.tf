resource "azurerm_resource_group" "pcf_services_resource_group" {
  name     = "${var.env_name}"
  location = "${var.location}"
}