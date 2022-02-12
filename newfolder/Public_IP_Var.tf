variable "Public_IP_Name" {
    description = "Enter public IP Name"
    type        = list(string)
    default     = ["PublicIP"]
}
variable "Public_IP_AllocationMethod" {
    description = "Enter allocation method"
    type        = list(string)
    default     = ["Dynamic"]
}
variable "Public_IP_Tags"{
    description = "Enter Tags"
    type        = map(string)
    default = {
        Environment ="Dev"
        Owner       = "Jake"
    }
  
}
