#code for nic variables
variable "NIC_Name" {
    description = "Enter NIC Name"
    type        = list(string)
    default     = ["New_NIC"]
}
variable "NIC_IP_Name" {
    description = "Enter NIC IP Name"
    type        = list(string)
    default     = ["ipconfig1"]
}
variable "NIC_AllocationMethod" {
    description = "Enter allocation method"
    type        = list(string)
    default     = ["Dynamic"]
}
variable "NIC_Tags"{
    description = "Enter Tags"
    type        = map(string)
    default     = {
        Environment ="Dev"
        Owner       = "Jake"
    }
  
}
