subscription = {
  id = "3bc8f069-65c7-4d08-b8de-534c20e56c38"
}

resource_group = {
  name     = "rg-network-monitoring"
  location = "eastus"
}

storage_account = {
  name                     = "flowlogsstorage"
  resource_group_name      = "rg-network-monitoring"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

automation_account = {
  name                = "auto-vm-scheduler"
  location            = "eastus"
  resource_group_name = "rg-network-monitoring"
}

runbook = {
  name                    = "AutoShutdownRunbook"
  description             = "Runbook to stop VMs based on tags"
  location                = "eastus"
  resource_group_name     = "rg-network-monitoring"
  automation_account_name = "auto-vm-scheduler"
  content                 = "" # will be overwritten in main.tf
}


schedule = {
  name                    = "DailyRunbookStopSchedule"
  resource_group_name     = "rg-network-monitoring"
  automation_account_name = "auto-vm-scheduler"
  frequency               = "Day"
  interval                = 1
  start_time              = "2025-05-21T22:00:00Z"
  timezone                = "UTC"
}

job_schedule = {
  resource_group_name     = "rg-network-monitoring"
  automation_account_name = "auto-vm-scheduler"
  schedule_name           = "DailyRunbookStopSchedule"
  runbook_name            = "AutoShutdownRunbook"
  parameters = {
    subscriptionid = "62016ff4-5005-442a-9023-c49e96da7af9"
    shutdown       = 1
    tagname        = "autostart"
    tagvalue       = "enabled"
  }
}

log_analytics_workspace = {
  name                = "workspace-network"
  resource_group_name = "rg-network-monitoring"
  location            = "eastus"
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

policy_assignment = {
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/3e9965dc-cc13-47ca-8259-a4252fd0cf7b"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/Managementgrouptest"
  location             = "eastus"
  
}

