provider "azurerm" {
    feature {
        prevent_deletion_if_contains_resource = true
    }

    use_msi = true
}