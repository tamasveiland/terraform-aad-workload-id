#variable "oidc_token" {}
#variable "oidc_token_file_path" {}
#variable "oidc_request_token" {}
#variable "oidc_request_url" {}

terraform {
  required_version = ">= 1.2.0"
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.75.0"
    }
  }
}

# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  features {}

  #use_oidc = true

  # for GitHub Actions
  #oidc_request_token = var.oidc_request_token
  #oidc_request_url   = var.oidc_request_url

  # for other generic OIDC providers, providing token directly
  #oidc_token = var.oidc_token

  # for other generic OIDC providers, reading token from a file
  #oidc_token_file_path = var.oidc_token_file_path


}
