variable "subscription" {
  description = "Azure subscription details"
  type = object({
    id = string
  })
  default = {
    id = "3bc8f069-65c7-4d08-b8de-534c20e56c38"
  }
}


variable "resource_group" {
  description = "Configuration for Azure Resource Group"
  type = object({
    name     = string
    location = string
  })
}

variable "storage_account" {
  description = "Configuration for Azure Storage Account"
  type = object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  })
}

variable "log_analytics_workspace" {
  description = "Configuration for Azure Log Analytics Workspace"
  type = object({
    name                = string
    resource_group_name = string
    location            = string
    sku                 = string
    retention_in_days   = number
  })
}

variable "policy_assignment" {
  description = "Configuration for policy assignment"
  type = object({
    policy_definition_id = string
    management_group_id  = string
    location             = string

  })
}
variable "subscription" {
  description = "Azure subscription ID"
  type = object({
    id = string
  })
}

variable "automation_account" {
  description = "Automation account configuration"
  type = object({
    name                = string
    location            = string
    resource_group_name = string
  })
}

variable "runbook" {
  description = "Runbook configuration"
  type = object({
    name                    = string
    description             = string
    location                = string
    resource_group_name     = string
    automation_account_name = string
    content                 = string
  })
}

variable "schedule" {
  description = "Automation schedule configuration"
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

variable "job_schedule" {
  description = "Automation job schedule configuration"
  type = object({
    resource_group_name     = string
    automation_account_name = string
    schedule_name           = string
    runbook_name            = string
    parameters              = map(any)
  })
}
