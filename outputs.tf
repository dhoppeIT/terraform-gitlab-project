output "avatar_url" {
  description = "The URL of the avatar image"
  value       = gitlab_project.this.avatar_url
}

output "empty_repo" {
  description = "Whether the project is empty"
  value       = gitlab_project.this.empty_repo
}

output "http_url_to_repo" {
  description = "URL that can be provided to git clone to clone the project"
  value       = gitlab_project.this.http_url_to_repo
}

output "id" {
  description = "The ID of this resource"
  value       = gitlab_project.this.id
}

output "path_with_namespace" {
  description = "The path of the repository with namespace"
  value       = gitlab_project.this.path_with_namespace
}

output "runners_token" {
  description = "Registration token to use during runner setup"
  value       = gitlab_project.this.runners_token
  sensitive   = true
}

output "ssh_url_to_repo" {
  description = "URL that can be provided to git clone to clone the project"
  value       = gitlab_project.this.ssh_url_to_repo
}

output "web_url" {
  description = "URL that can be used to find the project in a browser"
  value       = gitlab_project.this.web_url
}
