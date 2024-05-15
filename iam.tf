resource "azurerm_role_assignment" "datareader" {
  principal_id                     = azurerm_dashboard_grafana.observ.identity.0.principal_id
  role_definition_name             = "Monitoring Data Reader"
  scope                            = azurerm_monitor_workspace.observ.id
  skip_service_principal_aad_check = true
}
