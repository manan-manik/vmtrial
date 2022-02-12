#code for resource group
resource "azurerm_resource_group" "RG" {
    count    = length(var.RG_Name)
    name     = element(var.RG_Name, count.index)
    location = element(var.RG_Location,count.index)
    tags     = merge(var.RG_Tags)
}    
#code for vnet
resource "azurerm_virtual_network" "VNET"{
    count               = length(var.VNET_Name)
    name                = element(var.VNET_Name, count.index)
    location            = element(azurerm_resource_group.RG.*.location, count.index)
    resource_group_name = element(azurerm_resource_group.RG.*.name, count.index)
    address_space       = [element(var.VNET_Address, count.index)]
    tags                = merge(var.VNET_Tags)
}
#code for subnet
resource "azurerm_subnet" "Subnet" {
  depends_on = [
      azurerm_virtual_network.VNET    
  ]
    count                = length(var.Subnet_Names)
    name                 = element(var.Subnet_Names, count.index)
    resource_group_name  = element(azurerm_resource_group.RG.*.name, count.index)
    virtual_network_name = element(azurerm_virtual_network.VNET.*.name, count.index)
    address_prefixes     = [element(var.Subnet_Address,count.index)]
  }