terraform {
  backend "azurerm" {
    storage_account_name = "XXXX"
    container_name = "XXXX"
    key = "XXXX"
    # access_key = ""
  }
}