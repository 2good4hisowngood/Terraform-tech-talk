data "github_repositories" "example" {
  query = "org:${var.org_name}"
  include_repo_id = true
}
