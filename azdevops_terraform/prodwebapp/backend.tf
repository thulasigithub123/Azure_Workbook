terraform {
  backend "azurerm" {
    storage_account_name = "thulasiwebappstore"
    container_name = "prodtfstate"
    key = "terraform.tfstate"
    # access_key = ""
  }
}