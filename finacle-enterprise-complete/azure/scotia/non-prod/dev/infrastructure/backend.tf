terraform {
    backend "azurem" {
        resource_group_name = "RG_name"
        storage_account_name = "SAname"
        container = "tfstate"
        key = "statefile/statefile.tfstate"
        region = "Central US"
        use_msi = true
        use_azuread_auth =true
    }
}
