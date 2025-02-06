module "gitlab_project" {
  source = "../../"

  name = "example-project"

  description  = "Example (project)"
  namespace_id = data.gitlab_group.this.group_id
}
