terraform {
  backend "azurerm" {
    storage_account_name = "XXX"
    container_name = "XXX"
    key = "XXX"
    # access_key = ""
  }
}