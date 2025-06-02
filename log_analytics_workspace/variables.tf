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
