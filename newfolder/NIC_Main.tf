#code for network interface
resource "azurerm_network_interface" "NIC" {
    count               = length(var.NIC_Name)
    name                = element(var.NIC_Name, count.index)
    location            = element(azurerm_resource_group.RG.*.location, count.index)
    resource_group_name = element(azurerm_resource_group.RG.*.name, count.index)
    tags                = merge(var.NIC_Tags)  
    

    ip_configuration {
      
      name                          = element(var.NIC_IP_Name, count.index)
      subnet_id                     = element(azurerm_subnet.Subnet.*.id, count.index)
      private_ip_address_allocation = element(var.NIC_AllocationMethod, count.index)
      public_ip_address_id          = element(azurerm_public_ip.Public_IP.*.id, count.index)
    }
  
}