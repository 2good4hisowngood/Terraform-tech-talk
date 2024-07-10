output "repositories" {
    value = data.github_repositories.example.full_names
}

output "registration_tokens" {
    value = local.truncated_repo_names
}