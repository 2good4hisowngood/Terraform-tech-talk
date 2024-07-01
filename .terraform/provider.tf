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
  backend "azurerm" {
      resource_group_name  = "DevOpsAutomationRG"
      storage_account_name = "devopsautomationrgsa"
      container_name       = "tfstate"
      key                  = "dev-cloudflare-records.tfstate"
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}

provider "github" {
  token = var.github_token
}

provider "time" {
  # Configuration options
}

data "azurerm_client_config" "current" {}