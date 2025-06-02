variable "job_schedule" {
  description = "Job schedule configuration"
  type = object({
    resource_group_name     = string
    automation_account_name = string
    schedule_name           = string
    runbook_name            = string
    parameters              = map(any)
  })
}
