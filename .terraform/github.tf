data "github_repositories" "example" {
  query = "org:${var.org_name}"
  include_repo_id = true
}

# Generate registration tokens for each repository
data "github_actions_registration_token" "example" {
  for_each = toset(data.github_repositories.example.full_namesnames)
  repository = each.key
}