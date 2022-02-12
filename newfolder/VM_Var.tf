#code for vm variables
variable "VM_Name" {
    description = "Enter VM Name"
    type        = list(string)
    default     = ["VM01"]
}
variable "VM_Size" {
    description = "Enter VM size"
    type        = list(string)
    default     = ["Standard_B1s"]
}
variable "VM_Username" {
    description = "Enter VM Username"
    type        = list(string)
    default     = ["mananmanik"]
}
variable "VM_Password" {
    description = "Enter VM Password"
    type        = list(string)
    default     = ["Qwerty@12345"]
}
variable "VM_Tags"{
    type    = map(string)
    default = {
        Environment ="Dev"
        Owner       = "Manan"
    }
  
}
variable "VM_Caching" {
    description = "Enter VM caching"
    type        = list(string)
    default     = ["ReadWrite"]
}
variable "VM_Storage_Account_Type" {
    description = "Enter VM storage account type"
    type        = list(string)
    default     = ["Standard_LRS"]
}
variable "VM_Publisher" {
    description = "Enter VM Publisher Name"
    type        = list(string)
    default     = ["MicrosoftWindowsServer"]
}
variable "VM_Offer" {
    description = "Enter VM Offer Name"
    type        = list(string)
    default     = ["WindowsServer"]
}
variable "VM_SKU" {
    description = "Enter VM  SKU Name"
    type        = list(string)
    default     = ["2016-Datacenter"]
}
variable "VM_Version" {
    description = "Enter VM Version Name"
    type        = list(string)
    default     = ["latest"]
}