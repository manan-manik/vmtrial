#code for subnet variables
variable "Subnet_Names" {
  type    = list(string)
  default =["WebSubnet"]
}
variable "Subnet_Address" {
  type    = list(string)
  default =["10.0.1.0/24"]
}
