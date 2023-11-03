output "gitlab_project_avatar_url" {
  description = "The URL of the avatar image"
  value       = module.gitlab_project.avatar_url
}

output "gitlab_project_empty_repo" {
  description = "Whether the project is empty"
  value       = module.gitlab_project.empty_repo
}

output "gitlab_project_http_url_to_repo" {
  description = "URL that can be provided to git clone to clone the project"
  value       = module.gitlab_project.http_url_to_repo
}

output "gitlab_project_id" {
  description = "The ID of this resource"
  value       = module.gitlab_project.id
}

output "gitlab_project_path_with_namespace" {
  description = "The path of the repository with namespace"
  value       = module.gitlab_project.path_with_namespace
}

output "gitlab_project_runners_token" {
  description = "Registration token to use during runner setup"
  value       = module.gitlab_project.runners_token
  sensitive   = true
}

output "gitlab_project_ssh_url_to_repo" {
  description = "URL that can be provided to git clone to clone the project"
  value       = module.gitlab_project.ssh_url_to_repo
}

output "gitlab_project_web_url" {
  description = "URL that can be used to find the project in a browser"
  value       = module.gitlab_project.web_url
}
