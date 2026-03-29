terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.62"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.5"
    }
  }
}

provider "github" {
  token = var.personal_access_token
  owner = var.organization_name
}

provider "azurerm" {
  resource_provider_registrations = var.azurerm_resource_provider_registrations

  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    storage {
      data_plane_available = false
    }
  }
  storage_use_azuread = true
}
