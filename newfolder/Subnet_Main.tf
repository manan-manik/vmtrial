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