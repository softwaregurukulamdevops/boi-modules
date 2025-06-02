resource "azurerm_management_group_policy_assignment" "this" {
  name                 = "vnet-flow-log"
  display_name         = "Configure VNet to enable Flow Log and Traffic Analytics"
  policy_definition_id = var.policy_assignment.policy_definition_id
  management_group_id  = var.policy_assignment.management_group_id
  description          = "Ensure virtual networks have flow logs and traffic analytics enabled."

  identity {
    type = "SystemAssigned"
  }

  location = var.policy_assignment.location

  parameters = jsonencode({
    vnetRegion = {
      value = var.policy_assignment.location
    },
  
  })
}
