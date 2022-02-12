#code for vm
resource "azurerm_windows_virtual_machine" "VM" {
  count                 = length(var.VM_Name)
  name                  = element(var.VM_Name, count.index)
  location              = element(azurerm_resource_group.RG.*.location, count.index)
  resource_group_name   = element(azurerm_resource_group.RG.*.name, count.index)
  size                  = element(var.VM_Size, count.index)
  tags                  = merge(var.VM_Tags)
  admin_username        = element(var.VM_Username, count.index)
  admin_password        = element(var.VM_Password, count.index)
  network_interface_ids = [element(azurerm_network_interface.NIC.*.id, count.index),]

  os_disk {
    caching              = element(var.VM_Caching, count.index)
    storage_account_type = element(var.VM_Storage_Account_Type, count.index)
  }

  source_image_reference {
    publisher = element(var.VM_Publisher, count.index)
    offer     = element(var.VM_Offer, count.index)
    sku       = element(var.VM_SKU, count.index)
    version   = element(var.VM_Version, count.index)
  }
}