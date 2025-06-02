resource "azurerm_log_analytics_workspace" "this" {
  name                = var.log_analytics_workspace.name
  location            = var.log_analytics_workspace.location
  resource_group_name = var.log_analytics_workspace.resource_group_name
  sku                 = var.log_analytics_workspace.sku
  retention_in_days   = var.log_analytics_workspace.retention_in_days
}
