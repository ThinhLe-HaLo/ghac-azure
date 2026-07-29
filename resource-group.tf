resource "azurerm_resource_group" "uat_ghaction" {
  name     = var.ghaction_rg_name
  location = var.ghaction_location

  tags = var.ghaction_tags
}
