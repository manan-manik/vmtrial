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
