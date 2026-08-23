resource "azurerm_virtual_network" "gh-action-vnet" {
	name                = var.ghaction_vnet_name
	location            = var.ghaction_location
	resource_group_name = azurerm_resource_group.uat_ghaction.name
	address_space       = var.ghaction_vnet_address_space
}

resource "azurerm_subnet" "gh-action-subnet" {
	name                 = var.ghaction_subnet_name
    location             = var.ghaction_location
	resource_group_name  = azurerm_resource_group.gh-action-rg.name
	virtual_network_name = azurerm_virtual_network.uat_ghaction.name
	address_prefixes     = var.ghaction_subnet_address_prefixes
}
