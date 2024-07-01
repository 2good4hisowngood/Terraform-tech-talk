# Terraform-tech-talk
Presentation and tech demo

Sources:
Azure Container App Terraform Module - https://github.com/Azure/terraform-azure-container-apps 
Terraform Module for Github Action Runner Group Resource - https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_runner_group 
Command to run on container: https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/autoscaling-with-self-hosted-runners#using-ephemeral-runners-for-autoscaling 
Make terraform variables for token and organization name
Github Repo for Github actions worker https://github.com/actions/runner/blob/main/.github/workflows/publish-image.yml 
Create selfhosted worker page: https://github.com/organizations/hungerrush/settings/actions/runners/new?arch=x64&os=linux

Manually created resources:
- Service Principle | App Registration - Given scoped access to create resources on subscription.
- Storage Account where state files can be stored with a tfstate container.

Resources to deploy
Azurerm
- Resource Group
- Log Analytics Workspace
- Container App Env
- (Container App)[https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_app]
Github
- (GitHub Action Runner Group)[https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_runner_group]

Secrets:
Azure Credentials
    ARM_CLIENT_SECRET
    AZURE_CLIENT_ID
    AZURE_SUBSCRIPTION_ID
    AZURE_TENANT_ID
    STATE_RG_NAME - The resource group with the state file container
    STATE_SA_NAME - The name of the storage account where the state files are stored.
GitHub values

Variables:
    Org name - GitHub Org/User name