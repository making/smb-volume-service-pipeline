variable "env_name" {}

variable "env_short_name" {}

variable "subscription_id" {}

variable "tenant_id" {}

variable "client_id" {}

variable "client_secret" {}

variable "location" {}

variable "sql_server_administrator" {
  default = "mssqladmin"
}

variable "sql_server_edition" {
  default = "Basic"
}