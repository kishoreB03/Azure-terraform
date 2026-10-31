location = "Centralus"
resource_group_name = "test-rg"
vnet_name = "test-vnet"
vnet_address = ["10.0.0.0/16"]
subnets = {
    aks_subnet = {
        address_prefix = ["10.0.0.1/26"]
    }
    db_subnet = {
        address_prefix = ["10.0.0.2/28"]
        delegation = "Microsoft.DbforPostgreSQL/flexibleservers"
    }
    web_subnet = {
        address_prefix = ["10.0.0.3/28"]
    }
}
tags = {
    Environment = "test"
    owner       = "kishore"
}