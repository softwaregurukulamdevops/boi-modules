variable "policy_assignment" {
  description = "Configuration for policy assignment"
  type = object({
    policy_definition_id = string
    management_group_id  = string
    location             = string

  })
}
