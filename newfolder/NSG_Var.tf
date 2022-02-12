#code for network security variables
variable "NSG_Name" {
  type    = list(string)
  default =["WebNSG"]
}
variable "NSG_Tags"{
    type        = map(string)
    description = "Enter The Tags"
    default     = {
        Environment = "Dev",
        Owner       = "Jake"
    }   
}
variable "NSG_SecurityRule" {
    description = "Enter security rule name"
    type        = list(string)
    default     = ["AllAllow"]
}

variable "NSG_Priority" {
    description = "Enter NSG priority"
    type        = list(string)
    default     = ["100"]
}
variable "NSG_Direction" {
    description = "Enter NSG direction"
    type        = list(string)
    default     = ["Inbound"]
}
variable "NSG_Access" {
    description = "Enter NSG Access"
    type        = list(string)
    default     = ["Allow"]
}
variable "NSG_Protocol" {
    description = "Enter NSG Protocol"
    type        = list(string)
    default     = ["*"]
}
variable "NSG_Source_Port_Range" {
    description = "Enter NSG source port range"
    type        = list(string)
    default     = ["*"]
}
variable "NSG_Destination_Port_Range" {
    description = "Enter NSG destination port range"
    type        = list(string)
    default     = ["*"]
}
variable "NSG_Source_Address_Prefix" {
    description = "Enter NSG source address prefix"
    type        = list(string)
    default     = ["*"]
}
variable "NSG_Destination_Address_Prefix" {
    description = "Enter NSG destination address prefix"
    type        = list(string)
    default     = ["*"]
}
