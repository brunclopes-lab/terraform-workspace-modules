terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "adlsterraformstateyxz"
    container_name       = "terraform-state"
    key                  = "workspace_modules/infra/terraform.tfstate"
  }
}