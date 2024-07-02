# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_runner_group

data "github_repositories" "example" {
  query = "org:${var.org_name}"
  include_repo_id = true
}