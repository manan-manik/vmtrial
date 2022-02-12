#code for vnet
resource "azurerm_virtual_network" "VNET"{
    count               = length(var.VNET_Name)
    name                = element(var.VNET_Name, count.index)
    location            = element(azurerm_resource_group.RG.*.location, count.index)
    resource_group_name = element(azurerm_resource_group.RG.*.name, count.index)
    address_space       = [element(var.VNET_Address, count.index)]
    tags                = merge(var.VNET_Tags)
}
