module "resource_group" {
  source         = "./resource_group"
  resource_group = var.resource_group
  
}

module "storage_account" {
  source          = "./storage_account"
  storage_account = var.storage_account
}

module "log_analytics_workspace" {
  source                 = "./log_analytics_workspace"
  log_analytics_workspace = var.log_analytics_workspace
}

module "policy_assignment" {
  source            = "./policy_assignment"
  policy_assignment = {
    policy_definition_id = var.policy_assignment.policy_definition_id
    management_group_id  = var.policy_assignment.management_group_id
    location             = var.policy_assignment.location

  }
}
locals {
  automation_account_name = var.automation_account.name
}

module "automation_runbook" {
  source = "./modules/automation_runbook"
  runbook = merge(var.runbook, {
    automation_account_name = local.automation_account_name
    content                 = file("${path.module}/runbooks/AutoShutdown.ps1")
  })
}

module "automation_schedule" {
  source = "./modules/automation_schedule"
  schedule = merge(var.schedule, {
    automation_account_name = local.automation_account_name
  })
}

module "automation_job_schedule" {
  source = "./modules/automation_job_schedule"
  job_schedule = merge(var.job_schedule, {
    automation_account_name = local.automation_account_name
  })
}
