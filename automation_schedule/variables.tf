variable "schedule" {
  description = "Schedule configuration"
  type = object({
    name                    = string
    resource_group_name     = string
    automation_account_name = string
    frequency               = string
    interval                = number
    start_time              = string
    timezone                = string
  })
}
