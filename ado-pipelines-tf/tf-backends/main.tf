provider "azurerm" {
  features {}

  subscription_id = "76eefbf8-d98c-43f7-b97b-f146491974a8"
}

module "dev_backend" {
  source = "./modules/backend"
  environment = "dev"
}

module "test_backend" {
  source = "./modules/backend"
  environment = "test"
}

module "prod_backend" {
  source = "./modules/backend"
  environment = "prod"
}