resource "azurerm_dashboard_grafana" "observ" {
  name                          = format("amg-%s-%s-%s", var.project, var.environment, var.location_short)
  resource_group_name           = module.rg.name
  location                      = module.rg.location
  public_network_access_enabled = true
  tags                          = local.tags

  identity {
    type = "SystemAssigned"
  }

  azure_monitor_workspace_integrations {
    resource_id = azurerm_monitor_workspace.observ.id
  }

}
