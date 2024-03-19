terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

 

resource "azurerm_resource_group" "tf_rg" {
  name     = "prodrg"
  location = "West Europe"
}

resource "azurerm_service_plan" "tf_plan" {
  name                = "prodplan123thulasi"
  resource_group_name = azurerm_resource_group.tf_rg.name
  location            = azurerm_resource_group.tf_rg.location
  os_type             = "Linux"
  sku_name            = "F1"

  depends_on = [
    azurerm_resource_group.tf_rg
  ]
 }

resource "azurerm_linux_web_app" "tf_webapp" {
  name                = "prodapp123thulasi"
  resource_group_name = azurerm_resource_group.tf_rg.name
  location            = azurerm_resource_group.tf_rg.location
  service_plan_id     = azurerm_service_plan.tf_plan.id
  
  site_config {
    always_on        = true
    linux_fx_version="DOCKER|nextapp:1"
   }

  app_settings = {
      WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
      DOCKER_REGISTRY_SERVER_URL          = "https://webreportapp.azurecr.io"
      DOCKER_REGISTRY_SERVER_USERNAME     = "webreportapp"
      DOCKER_REGISTRY_SERVER_PASSWORD     = ""
      WEBSITES_CONTAINER_START_TIME_LIMIT = 1800
     }

   

  depends_on = [
    azurerm_service_plan.tf_plan
  ]
}
 