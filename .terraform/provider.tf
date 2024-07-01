terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
    github = {
      source = "integrations/github"
      version = "6.2.2"
    }
    time = {
      source = "hashicorp/time"
      version = "0.11.2"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = 
  tenant_id       = 
}

provider "github" {
  token = var.github_token
}

provider "time" {
  # Configuration options
}

data "azurerm_client_config" "current" {}