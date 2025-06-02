variable "resource_group" {
  description = "Configuration for Azure Resource Group"
  type = object({
    name     = string
    location = string
  })
}
