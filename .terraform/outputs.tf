output "repositories" {
    value = tolist(data.github_repositories.example.repositories[*].id) # [github_repository.example.repo_id]
}