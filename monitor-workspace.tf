resource "azurerm_monitor_workspace" "observ" {
  name                          = format("amw-%s-%s-%s", var.project, var.environment, var.location_short)
  resource_group_name           = module.rg.name
  location                      = module.rg.location
  public_network_access_enabled = true
  tags                          = local.tags
}
