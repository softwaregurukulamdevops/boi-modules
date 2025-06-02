resource "azurerm_automation_account" "this" {
  name                        = var.automation_account.name
  location                    = var.automation_account.location
  resource_group_name         = var.automation_account.resource_group_name
  sku_name                    = "Basic"
  public_network_access_enabled = true

  identity {
    type = "SystemAssigned"
  }
}
