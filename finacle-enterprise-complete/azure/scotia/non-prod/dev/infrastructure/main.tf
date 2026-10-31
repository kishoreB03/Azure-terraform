module "networking"{
    source = "../../../../module/azure/networking"
    resource_group_name = var.resource_group_name
    location = var.location
    vnet_name = var.vnet_name
    vnet_address = var.vnet_address
    subnet_address = var.subnet_address
    tags = var.tags
}