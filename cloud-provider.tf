terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
  # Configure the backend for storing Terraform state in Azure Blob Storage
  # add blob storage contributor
  # The backend configuration will use the Azure Blob Storage to store the Terraform state securely.
  backend "azurerm" {}
   
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  //resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  #subscription_id = "eb5ce75b-a97c-4c2a-b33d-2264184398df"
}