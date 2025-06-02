variable "storage_account" {
  description = "Configuration for the Azure Storage Account"
  type = object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  })
}
