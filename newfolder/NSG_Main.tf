#code for network security group
resource "azurerm_network_security_group" "NSG"{
    depends_on = [
      azurerm_subnet.Subnet
    ]
    count                = length(var.NSG_Name)
    name                 = element(var.NSG_Name, count.index)
    location             = element(azurerm_resource_group.RG.*.location, count.index)
    resource_group_name  = element(azurerm_resource_group.RG.*.name, count.index)
    tags                 = merge(var.NSG_Tags)
    security_rule {
        name                       = element(var.NSG_SecurityRule, count.index)
        priority                   = element(var.NSG_Priority, count.index)
        direction                  = element(var.NSG_Direction, count.index)
        access                     = element(var.NSG_Access, count.index)
        protocol                   = element(var.NSG_Protocol, count.index)
        source_port_range          = element(var.NSG_Source_Port_Range, count.index)
        destination_port_range     = element(var.NSG_Destination_Port_Range, count.index)
        source_address_prefix      = element(var.NSG_Source_Address_Prefix, count.index)
        destination_address_prefix = element(var.NSG_Destination_Address_Prefix, count.index)
    }
}
resource "azurerm_subnet_network_security_group_association" "SubnetWithNSG" {
  count                     = length(var.NSG_Name)
  subnet_id                 = element(azurerm_subnet.Subnet.*.id, count.index)
  network_security_group_id = element(azurerm_network_security_group.NSG.*.id, count.index)
}