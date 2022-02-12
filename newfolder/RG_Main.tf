#code for resource group
resource "azurerm_resource_group" "RG" {
    count    = length(var.RG_Name)
    name     = element(var.RG_Name, count.index)
    location = element(var.RG_Location,count.index)
    tags     = merge(var.RG_Tags)
}    
