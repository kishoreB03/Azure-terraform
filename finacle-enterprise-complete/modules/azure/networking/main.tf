
resource "azurerm_virtual_network" Vnet{
    vnet_name = var.vnet_name
    resource_group_name = var.resource_group_name
    vnet_address = var.vnet_address
    location =  var.location
    tags = var.tags
    subnet = {
        for_each = subnets.var
        name = each.key
        vnet_name = azurerm_virtual_network.vnet.vnet_name
        resource_group_name = azurerm_virtual_network.Vnet.resource_group_name
        dynamic delegation {
            for_each =
            (each.value.delegation, null) =! null ? [1]:[0]
            content {
                name = "delegation"
                service_delegation {
                    name = each.value.delegation
                    actions = [MicrosoftNetwork/VirtualNetwork/subnet/join/action]
                }
            }
        }
    }
}
