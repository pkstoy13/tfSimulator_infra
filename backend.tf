terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfsimulatorstate"
    container_name       = "tfstate"
    key                  = "tfsimulator.tfstate"
  }
}
