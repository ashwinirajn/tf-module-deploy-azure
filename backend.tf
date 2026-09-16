terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstrgacc"
    container_name       = "tfstate"
    key                  = "tf-module-deploy-azure.tfstate"
    use_azuread_auth     = true
  }
}