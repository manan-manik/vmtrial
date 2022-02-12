#code for resource group variables
variable "RG_Name" {
    description = "Enter The Resource Group Name"
    type        = list(string)
    default     = ["SQL_VM_RG"]
}
variable "RG_Location" {
    description = "Enter The Resource Group Location"
    type        = list(string)
    default     = ["Central india"]
}
variable "RG_Tags"{
    type        = map(string)
    description = "Enter The Tags"
    default     = {
        
        Environment = "Dev",
        Owner       = "Jake"
    }
}
#code for vnet variables
variable "VNET_Name" {
  type    = list(string)
  default =["3TierVnet"]
}
variable "VNET_Address" {
  type    = list(string)
  default =["10.0.0.0/16"]
}
variable "VNET_Tags"{
    type        = map(string)
    description = "Enter The Tags"
    default     = {
        Environment = "Dev",
        Owner       = "Jake"
    }   
}
#code for subnet variables
variable "Subnet_Names" {
  type    = list(string)
  default =["WebSubnet"]
}
variable "Subnet_Address" {
  type    = list(string)
  default =["10.0.1.0/24"]
}
