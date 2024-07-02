resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "Central US"
}

resource "azurerm_log_analytics_workspace" "example" {
  name                = "acctest-01"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_container_app_environment" "example" {
  name                       = "Example-Environment"
  location                   = azurerm_resource_group.example.location
  resource_group_name        = azurerm_resource_group.example.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.example.id
}

resource "azurerm_container_app" "example" {
  for_each                     = toset(data.github_repositories.example.full_names)
  name                         = "${each.value}-github-runner"
  container_app_environment_id = azurerm_container_app_environment.example.id
  resource_group_name          = azurerm_resource_group.example.name
  revision_mode                = "Single"
  identity {
    type = "UserAssigned"
    identity_ids = [
      azurerm_user_assigned_identity.example.id,
    ]
  }
  registry {
    server   = data.azurerm_container_registry.example.login_server
    identity = azurerm_user_assigned_identity.example.id
  }

  template {
    container {
      name   = "examplecontainerapp"
      image  = var.image_name
      cpu    = 0.25
      memory = "0.5Gi"
      env {
        name  = "REPO"
        value = each.value
      }
      env {
        name = "TOKEN"
        value = var.token
      }
    }
  }
}

resource "azurerm_user_assigned_identity" "example" {
  location            = azurerm_resource_group.example.location
  name                = "example"
  resource_group_name = azurerm_resource_group.example.name
}

data "azurerm_container_registry" "example" {
  name                = var.acr_server
  resource_group_name = var.acr_rg
}

resource "azurerm_role_assignment" "example" {
  scope                = data.azurerm_container_registry.example.id
  role_definition_name = "acrPull"
  principal_id         = azurerm_user_assigned_identity.example.principal_id
}