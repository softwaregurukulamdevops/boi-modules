resource "azurerm_automation_schedule" "this" {
  name                    = var.schedule.name
  resource_group_name     = var.schedule.resource_group_name
  automation_account_name = var.schedule.automation_account_name
  frequency               = var.schedule.frequency
  interval                = var.schedule.interval
  start_time              = var.schedule.start_time
  timezone                = var.schedule.timezone
}
