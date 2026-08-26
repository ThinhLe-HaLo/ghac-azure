resource "azurerm_virtual_network" "gh-action-vnet" {
	name                = var.ghaction_vnet_name
	location            = var.ghaction_location
	resource_group_name = azurerm_resource_group.uat_ghaction.name
	address_space       = var.ghaction_vnet_address_space
}

resource "azurerm_subnet" "gh-action-subnet" {
	name                 = var.ghaction_subnet_name
	resource_group_name  = azurerm_resource_group.uat_ghaction.name
	virtual_network_name = azurerm_virtual_network.gh-action-vnet.name
	address_prefixes     = var.ghaction_subnet_address_prefix
}
resource "azurerm_subnet" "gh-action-subnet-02" {
	name                 = var.ghaction_subnet_name_02
	resource_group_name  = azurerm_resource_group.uat_ghaction.name
	virtual_network_name = azurerm_virtual_network.gh-action-vnet.name
	address_prefixes     = var.ghaction_subnet_address_prefix_02
}
resource "azurerm_subnet" "gh-action-subnet-03" {
	name                 = var.ghaction_subnet_name_03
	resource_group_name  = azurerm_resource_group.uat_ghaction.name
	virtual_network_name = azurerm_virtual_network.gh-action-vnet.name
	address_prefixes     = var.ghaction_subnet_address_prefix_03
}
