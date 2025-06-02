variable "automation_account" {
  description = "Automation account configuration"
  type = object({
    name                = string
    location            = string
    resource_group_name = string
  })
}
