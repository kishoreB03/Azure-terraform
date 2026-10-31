terraform {

  required_versions = " >= 1.8.0 , < 2.0.0"
  
  required_providers = {
    azuremrm = {
        source = "hashicorp/azurerm"
        version = "~> 4.0"
    
    }
    random = {
        source = "hashicorp/random"
        version = "~> 3.8"
    }
  }
}
