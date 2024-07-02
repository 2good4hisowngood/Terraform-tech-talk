# Terraform-tech-talk
Presentation and tech demo

Sources:
Azure Container App Terraform Module - https://github.com/Azure/terraform-azure-container-apps 
Github action runner guide: https://baccini-al.medium.com/how-to-containerize-a-github-actions-self-hosted-runner-5994cc08b9fb

Manually created resources:
- Service Principle | App Registration - Given scoped access to create resources on subscription.
- Storage Account where state files can be stored with a tfstate container.
- Set org_name to repo owner name

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
    AZURE_CONTAINER_REGISTRY_USERNAME - Username for ACR
    AZURE_CONTAINER_REGISTRY_PASSWORD - Password for ACR
GitHub values

Variables:
    Org name - GitHub Org/User name
