output "repositories" {
    value = data.github_repositories.example.full_names
}

output "truncated_repo_names" {
    value = local.truncated_repo_names
}