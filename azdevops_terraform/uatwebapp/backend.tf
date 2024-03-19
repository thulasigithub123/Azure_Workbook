terraform {
  backend "azurerm" {
    storage_account_name = "thulasiwebappstore"
    container_name = "uattfstate"
    key = "terraform.tfstate"
    access_key = "7OQukIH2U71ecIDVxG2AkYVzqsrBKe2fUQpkJUs7dhJdNv6sSoOLZf01SjlVqn8mVpMESR1vgBWM+AStyDbHQQ=="
  }
}