terraform {
  backend "azurerm" {
    storage_account_name = "thulasiwebappstore"
    container_name = "prodtfstate"
    key = "terraform.tfstate"
    access_key = "BinaoIdh9s85+2Ln0+P4r6CtX7nFxTiafrxWN/xR/FhKlNyBfhQJikoC5ZOsa1LP+vKl2N8y2QEy+ASth5SOWw=="
  }
}