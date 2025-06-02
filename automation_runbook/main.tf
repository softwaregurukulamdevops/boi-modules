resource "azurerm_automation_runbook" "this" {
  name                    = var.runbook.name
  description             = var.runbook.description
  location                = var.runbook.location
  resource_group_name     = var.runbook.resource_group_name
  automation_account_name = var.runbook.automation_account_name
  log_verbose             = true
  log_progress            = true
  runbook_type            = "PowerShellWorkflow"
  content                 = var.runbook.content
}
