terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~>2.0.0"
    }
  }
  #   backend "azurerm" {
  #     use_oidc         = true
  #     use_azuread_auth = true
  #   }


}

provider "azurerm" {
  features {
    key_vault {
	  purge_soft_delete_on_destroy = false
	}
  }
  subscription_id = "13693b0b-cca2-4db3-bbf3-d729bf19ef6b"
}

provider "azapi" {
  #subscription_id = "cca1b8d6-3068-452b-823f-917fd92ba746"
  use_oidc = true
}