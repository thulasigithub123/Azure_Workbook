terraform {
  backend "azurerm" {
    storage_account_name = "thulasiwebappstore"
    container_name = "uattfstate"
    key = "terraform.tfstate"
    access_key = ""
  }
}