#------------------------------------------------------------------------------
# VNet
#------------------------------------------------------------------------------
resource "azurerm_virtual_network" "vnet" {
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  name                = var.vnet_name
  address_space       = var.vnet_cidr

  tags = var.common_tags
}

#------------------------------------------------------------------------------
# Subnet
#------------------------------------------------------------------------------
resource "azurerm_subnet" "vm" {
  resource_group_name  = azurerm_resource_group.rg.name
  name                 = "vm-subnet"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.vm_subnet_cidr]
}

resource "azurerm_subnet" "db" {
  resource_group_name  = azurerm_resource_group.rg.name
  name                 = "db-subnet"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.db_subnet_cidr]
}