<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.105.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 6.2.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.105.0 |
| <a name="provider_github"></a> [github](#provider\_github) | 6.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_app.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/resources/container_app) | resource |
| [azurerm_container_app_environment.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/resources/container_app_environment) | resource |
| [azurerm_log_analytics_workspace.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/resources/log_analytics_workspace) | resource |
| [azurerm_resource_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/resources/role_assignment) | resource |
| [azurerm_user_assigned_identity.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/resources/user_assigned_identity) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/data-sources/client_config) | data source |
| [azurerm_container_registry.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/data-sources/container_registry) | data source |
| [github_repositories.example](https://registry.terraform.io/providers/integrations/github/6.2.2/docs/data-sources/repositories) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_password"></a> [acr\_password](#input\_acr\_password) | The Azure Container Registry password | `string` | n/a | yes |
| <a name="input_acr_rg"></a> [acr\_rg](#input\_acr\_rg) | The Azure Container Registry resource group | `string` | n/a | yes |
| <a name="input_acr_server"></a> [acr\_server](#input\_acr\_server) | The Azure Container Registry server | `string` | n/a | yes |
| <a name="input_acr_username"></a> [acr\_username](#input\_acr\_username) | The Azure Container Registry username | `string` | n/a | yes |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | The name of the image to deploy | `string` | n/a | yes |
| <a name="input_org_name"></a> [org\_name](#input\_org\_name) | The name of the GitHub organization | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | The GitHub token | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repositories"></a> [repositories](#output\_repositories) | n/a |
<!-- END_TF_DOCS -->
