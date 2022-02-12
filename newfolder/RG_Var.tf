#code for resource group variables
variable "RG_Name" {
    description = "Enter The Resource Group Name"
    type        = list(string)
    default     = ["AlertRG"]
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
