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
