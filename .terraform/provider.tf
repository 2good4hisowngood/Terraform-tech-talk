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
  }
  backend "azurerm" {
      resource_group_name  = "personal-devops"
      storage_account_name = "mypersonalterraform"
      container_name       = "tfstate"
      key                  = "test.tfstate"
  }
}

provider "azurerm" {
  features {
  }
}

provider "github" {
}

provider "time" {
}

data "azurerm_client_config" "current" {}