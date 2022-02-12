resource "azurerm_public_ip" "Public_IP"{
    count               = length(var.Public_IP_Name)
    name                = element(var.Public_IP_Name, count.index)
    location            = element(azurerm_resource_group.RG.*.location, count.index)
    resource_group_name = element(azurerm_resource_group.RG.*.name, count.index)
    allocation_method   = element(var.Public_IP_AllocationMethod, count.index)
    tags                = merge(var.Public_IP_Tags)
    
    
}