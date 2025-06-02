resource "azurerm_automation_job_schedule" "this" {
  resource_group_name     = var.job_schedule.resource_group_name
  automation_account_name = var.job_schedule.automation_account_name
  schedule_name           = var.job_schedule.schedule_name
  runbook_name            = var.job_schedule.runbook_name
  parameters              = var.job_schedule.parameters
}
