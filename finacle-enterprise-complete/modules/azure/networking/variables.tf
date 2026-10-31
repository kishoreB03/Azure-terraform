variable "resource_group_name" 
{
    type = string
}
variable "vnet_name"
{
    type =string
}
variable "vnet_address" 
{
    type = list(string)
}
variable "location"
{
    type = string
}
variable "subnet"
{
    type = map(object{
        address_prefix = list(string)
        delegation = optional(string)
    })
}

variable "tags"
{
    type = map(string)
}