data "azurerm_client_config" "current" {
}

resource "azurerm_resource_group" "example" {
  name     = "rg-mjlab-crossplane-tf02"
  location = var.location
}


module "avm-res-keyvault-vault" {
  source                   = "Azure/avm-res-keyvault-vault/azurerm"
  version                  = "0.9.1"
  name                     = "kv-mjlab-crossplane-tf02"
  location                 = azurerm_resource_group.example.location
  resource_group_name      = azurerm_resource_group.example.name
  tenant_id                = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled = false
}
