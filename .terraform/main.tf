# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_runner_group
# resource "github_repository" "example" {
#   name = var.repo_name
# }

data "github_repositories" "example" {
  query = "org:${var.org_name}"
  include_repo_id = true
}

resource "github_actions_runner_group" "example" {
  name                    = "${var.org_name}-runners"
  visibility              = "selected"
  selected_repository_ids = data.github_repositories.example.repo_ids
}