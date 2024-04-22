# terraform-gitlab-project

Terraform module to manage the following GitLab resources:

* gitlab_project

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_project" {
  source  = "gitlab.com/terraform-child-modules1/terraform-gitlab-project/local"
  version = "1.0.0"

  name        = "example-project"
  description = "Example (project)"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 16.11 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 16.11 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_project.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_merge_on_skipped_pipeline"></a> [allow\_merge\_on\_skipped\_pipeline](#input\_allow\_merge\_on\_skipped\_pipeline) | Set to true if you want to treat skipped pipelines as if they finished with success. | `bool` | `false` | no |
| <a name="input_analytics_access_level"></a> [analytics\_access\_level](#input\_analytics\_access\_level) | Set the analytics access level | `string` | `"enabled"` | no |
| <a name="input_approvals_before_merge"></a> [approvals\_before\_merge](#input\_approvals\_before\_merge) | Number of merge request approvals required for merging | `number` | `0` | no |
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | Set to true to archive the project instead of deleting on destroy | `bool` | `false` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | Whether the project is in read-only mode (archived) | `bool` | `false` | no |
| <a name="input_auto_cancel_pending_pipelines"></a> [auto\_cancel\_pending\_pipelines](#input\_auto\_cancel\_pending\_pipelines) | Auto-cancel pending pipelines | `string` | `"enabled"` | no |
| <a name="input_auto_devops_deploy_strategy"></a> [auto\_devops\_deploy\_strategy](#input\_auto\_devops\_deploy\_strategy) | Auto Deploy strategy | `string` | `"continuous"` | no |
| <a name="input_auto_devops_enabled"></a> [auto\_devops\_enabled](#input\_auto\_devops\_enabled) | Enable Auto DevOps for this project | `bool` | `false` | no |
| <a name="input_autoclose_referenced_issues"></a> [autoclose\_referenced\_issues](#input\_autoclose\_referenced\_issues) | Set whether auto-closing referenced issues on default branch | `bool` | `true` | no |
| <a name="input_avatar"></a> [avatar](#input\_avatar) | A local path to the avatar image to upload | `string` | `null` | no |
| <a name="input_avatar_hash"></a> [avatar\_hash](#input\_avatar\_hash) | The hash of the avatar image | `string` | `null` | no |
| <a name="input_build_git_strategy"></a> [build\_git\_strategy](#input\_build\_git\_strategy) | The Git strategy | `string` | `"fetch"` | no |
| <a name="input_build_timeout"></a> [build\_timeout](#input\_build\_timeout) | The maximum amount of time, in seconds, that a job can run | `number` | `3600` | no |
| <a name="input_builds_access_level"></a> [builds\_access\_level](#input\_builds\_access\_level) | Set the builds access level | `string` | `"enabled"` | no |
| <a name="input_ci_config_path"></a> [ci\_config\_path](#input\_ci\_config\_path) | Custom Path to CI config file | `string` | `null` | no |
| <a name="input_ci_default_git_depth"></a> [ci\_default\_git\_depth](#input\_ci\_default\_git\_depth) | Default number of revisions for shallow cloning | `number` | `20` | no |
| <a name="input_ci_forward_deployment_enabled"></a> [ci\_forward\_deployment\_enabled](#input\_ci\_forward\_deployment\_enabled) | When a new deployment job starts, skip older deployment jobs that are still pending | `bool` | `true` | no |
| <a name="input_ci_separated_caches"></a> [ci\_separated\_caches](#input\_ci\_separated\_caches) | Use separate caches for protected branches | `bool` | `true` | no |
| <a name="input_container_expiration_policy"></a> [container\_expiration\_policy](#input\_container\_expiration\_policy) | Set the image cleanup policy for this project | `list(string)` | `[]` | no |
| <a name="input_container_registry_access_level"></a> [container\_registry\_access\_level](#input\_container\_registry\_access\_level) | Set visibility of container registry, for this project | `string` | `"enabled"` | no |
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | The default branch for the project | `string` | `"main"` | no |
| <a name="input_description"></a> [description](#input\_description) | A description of the project | `string` | `null` | no |
| <a name="input_emails_enabled"></a> [emails\_enabled](#input\_emails\_enabled) | Enable email notifications | `bool` | `true` | no |
| <a name="input_environments_access_level"></a> [environments\_access\_level](#input\_environments\_access\_level) | Set the environments access level | `string` | `"enabled"` | no |
| <a name="input_external_authorization_classification_label"></a> [external\_authorization\_classification\_label](#input\_external\_authorization\_classification\_label) | The classification label for the project | `string` | `null` | no |
| <a name="input_feature_flags_access_level"></a> [feature\_flags\_access\_level](#input\_feature\_flags\_access\_level) | Set the feature flags access level | `string` | `"enabled"` | no |
| <a name="input_forked_from_project_id"></a> [forked\_from\_project\_id](#input\_forked\_from\_project\_id) | The ID of the project to fork | `number` | `null` | no |
| <a name="input_forking_access_level"></a> [forking\_access\_level](#input\_forking\_access\_level) | Set the forking access level | `string` | `"enabled"` | no |
| <a name="input_group_with_project_templates_id"></a> [group\_with\_project\_templates\_id](#input\_group\_with\_project\_templates\_id) | For group-level custom templates, specifies ID of group from which all the custom project templates are sourced | `number` | `null` | no |
| <a name="input_import_url"></a> [import\_url](#input\_import\_url) | Git URL to a repository to be imported | `string` | `null` | no |
| <a name="input_import_url_password"></a> [import\_url\_password](#input\_import\_url\_password) | The password for the import\_url | `string` | `null` | no |
| <a name="input_import_url_username"></a> [import\_url\_username](#input\_import\_url\_username) | The username for the import\_url | `string` | `null` | no |
| <a name="input_infrastructure_access_level"></a> [infrastructure\_access\_level](#input\_infrastructure\_access\_level) | Set the infrastructure access level | `string` | `"enabled"` | no |
| <a name="input_initialize_with_readme"></a> [initialize\_with\_readme](#input\_initialize\_with\_readme) | Create main branch with first commit containing a README.md file | `bool` | `true` | no |
| <a name="input_issues_access_level"></a> [issues\_access\_level](#input\_issues\_access\_level) | Set the issues access level | `string` | `"enabled"` | no |
| <a name="input_issues_enabled"></a> [issues\_enabled](#input\_issues\_enabled) | Enable issue tracking for the project | `bool` | `true` | no |
| <a name="input_issues_template"></a> [issues\_template](#input\_issues\_template) | Sets the template for new issues in the project | `string` | `null` | no |
| <a name="input_keep_latest_artifact"></a> [keep\_latest\_artifact](#input\_keep\_latest\_artifact) | Disable or enable the ability to keep the latest artifact for this project | `bool` | `true` | no |
| <a name="input_lfs_enabled"></a> [lfs\_enabled](#input\_lfs\_enabled) | Enable LFS for the project | `bool` | `true` | no |
| <a name="input_merge_commit_template"></a> [merge\_commit\_template](#input\_merge\_commit\_template) | Template used to create merge commit message in merge requests | `string` | `null` | no |
| <a name="input_merge_method"></a> [merge\_method](#input\_merge\_method) | Set the merge method | `string` | `"merge"` | no |
| <a name="input_merge_pipelines_enabled"></a> [merge\_pipelines\_enabled](#input\_merge\_pipelines\_enabled) | Enable or disable merge pipelines | `bool` | `false` | no |
| <a name="input_merge_requests_access_level"></a> [merge\_requests\_access\_level](#input\_merge\_requests\_access\_level) | Set the merge requests access level | `string` | `"enabled"` | no |
| <a name="input_merge_requests_enabled"></a> [merge\_requests\_enabled](#input\_merge\_requests\_enabled) | Enable merge requests for the project | `bool` | `true` | no |
| <a name="input_merge_requests_template"></a> [merge\_requests\_template](#input\_merge\_requests\_template) | Sets the template for new merge requests in the project | `string` | `null` | no |
| <a name="input_merge_trains_enabled"></a> [merge\_trains\_enabled](#input\_merge\_trains\_enabled) | Enable or disable merge trains | `bool` | `false` | no |
| <a name="input_mirror"></a> [mirror](#input\_mirror) | Enable project pull mirror | `bool` | `false` | no |
| <a name="input_mirror_overwrites_diverged_branches"></a> [mirror\_overwrites\_diverged\_branches](#input\_mirror\_overwrites\_diverged\_branches) | Enable overwrite diverged branches for a mirrored project | `bool` | `true` | no |
| <a name="input_mirror_trigger_builds"></a> [mirror\_trigger\_builds](#input\_mirror\_trigger\_builds) | Enable trigger builds on pushes for a mirrored project | `bool` | `false` | no |
| <a name="input_monitor_access_level"></a> [monitor\_access\_level](#input\_monitor\_access\_level) | Set the monitor access level | `string` | `"enabled"` | no |
| <a name="input_mr_default_target_self"></a> [mr\_default\_target\_self](#input\_mr\_default\_target\_self) | For forked projects, target merge requests to this project | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the project | `string` | n/a | yes |
| <a name="input_namespace_id"></a> [namespace\_id](#input\_namespace\_id) | The namespace (group or user) of the project | `number` | `null` | no |
| <a name="input_only_allow_merge_if_all_discussions_are_resolved"></a> [only\_allow\_merge\_if\_all\_discussions\_are\_resolved](#input\_only\_allow\_merge\_if\_all\_discussions\_are\_resolved) | Set to true if you want allow merges only if all discussions are resolved | `bool` | `false` | no |
| <a name="input_only_allow_merge_if_pipeline_succeeds"></a> [only\_allow\_merge\_if\_pipeline\_succeeds](#input\_only\_allow\_merge\_if\_pipeline\_succeeds) | Set to true if you want allow merges only if a pipeline succeeds | `bool` | `false` | no |
| <a name="input_only_mirror_protected_branches"></a> [only\_mirror\_protected\_branches](#input\_only\_mirror\_protected\_branches) | Enable only mirror protected branches for a mirrored project | `bool` | `true` | no |
| <a name="input_packages_enabled"></a> [packages\_enabled](#input\_packages\_enabled) | Enable packages repository for the project | `bool` | `true` | no |
| <a name="input_pages_access_level"></a> [pages\_access\_level](#input\_pages\_access\_level) | Enable pages access control | `string` | `"private"` | no |
| <a name="input_path"></a> [path](#input\_path) | The path of the repository | `string` | `null` | no |
| <a name="input_printing_merge_request_link_enabled"></a> [printing\_merge\_request\_link\_enabled](#input\_printing\_merge\_request\_link\_enabled) | Show link to create/view merge request when pushing from the command line | `bool` | `true` | no |
| <a name="input_public_jobs"></a> [public\_jobs](#input\_public\_jobs) | If true, jobs can be viewed by non-project members | `bool` | `true` | no |
| <a name="input_push_rules"></a> [push\_rules](#input\_push\_rules) | Push rules for the project | `list(string)` | `[]` | no |
| <a name="input_releases_access_level"></a> [releases\_access\_level](#input\_releases\_access\_level) | Set the releases access level | `string` | `"enabled"` | no |
| <a name="input_remove_source_branch_after_merge"></a> [remove\_source\_branch\_after\_merge](#input\_remove\_source\_branch\_after\_merge) | Enable Delete source branch option by default for all new merge requests | `bool` | `true` | no |
| <a name="input_repository_access_level"></a> [repository\_access\_level](#input\_repository\_access\_level) | Set the repository access level | `string` | `"enabled"` | no |
| <a name="input_repository_storage"></a> [repository\_storage](#input\_repository\_storage) | Which storage shard the repository is on | `string` | `null` | no |
| <a name="input_request_access_enabled"></a> [request\_access\_enabled](#input\_request\_access\_enabled) | Allow users to request member access | `bool` | `true` | no |
| <a name="input_requirements_access_level"></a> [requirements\_access\_level](#input\_requirements\_access\_level) | Set the requirements access level | `string` | `"enabled"` | no |
| <a name="input_resolve_outdated_diff_discussions"></a> [resolve\_outdated\_diff\_discussions](#input\_resolve\_outdated\_diff\_discussions) | Automatically resolve merge request diffs discussions on lines changed with a push | `bool` | `false` | no |
| <a name="input_restrict_user_defined_variables"></a> [restrict\_user\_defined\_variables](#input\_restrict\_user\_defined\_variables) | Allow only users with the Maintainer role to pass user-defined variables when triggering a pipeline | `bool` | `false` | no |
| <a name="input_security_and_compliance_access_level"></a> [security\_and\_compliance\_access\_level](#input\_security\_and\_compliance\_access\_level) | Set the security and compliance access level | `string` | `"private"` | no |
| <a name="input_shared_runners_enabled"></a> [shared\_runners\_enabled](#input\_shared\_runners\_enabled) | Enable shared runners for this project | `bool` | `true` | no |
| <a name="input_skip_wait_for_default_branch_protection"></a> [skip\_wait\_for\_default\_branch\_protection](#input\_skip\_wait\_for\_default\_branch\_protection) | If true, the default behavior to wait for the default branch protection to be created is skipped | `bool` | `false` | no |
| <a name="input_snippets_access_level"></a> [snippets\_access\_level](#input\_snippets\_access\_level) | Set the snippets access level | `string` | `"enabled"` | no |
| <a name="input_snippets_enabled"></a> [snippets\_enabled](#input\_snippets\_enabled) | Enable snippets for the project | `bool` | `true` | no |
| <a name="input_squash_commit_template"></a> [squash\_commit\_template](#input\_squash\_commit\_template) | Template used to create squash commit message in merge requests | `string` | `null` | no |
| <a name="input_squash_option"></a> [squash\_option](#input\_squash\_option) | Squash commits when merge request | `string` | `"default_off"` | no |
| <a name="input_suggestion_commit_message"></a> [suggestion\_commit\_message](#input\_suggestion\_commit\_message) | The commit message used to apply merge request suggestions | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The list of tags for a project | `set(string)` | `[]` | no |
| <a name="input_template_name"></a> [template\_name](#input\_template\_name) | When used without use\_custom\_template, name of a built-in project template | `string` | `null` | no |
| <a name="input_template_project_id"></a> [template\_project\_id](#input\_template\_project\_id) | When used with use\_custom\_template, project ID of a custom project template | `number` | `null` | no |
| <a name="input_topics"></a> [topics](#input\_topics) | The list of topics for the project | `set(string)` | `[]` | no |
| <a name="input_use_custom_template"></a> [use\_custom\_template](#input\_use\_custom\_template) | Use either custom instance or group (with group\_with\_project\_templates\_id) project template (enterprise edition) | `bool` | `false` | no |
| <a name="input_visibility_level"></a> [visibility\_level](#input\_visibility\_level) | Set to public to create a public project | `string` | `"private"` | no |
| <a name="input_wiki_access_level"></a> [wiki\_access\_level](#input\_wiki\_access\_level) | Set the wiki access level | `string` | `"enabled"` | no |
| <a name="input_wiki_enabled"></a> [wiki\_enabled](#input\_wiki\_enabled) | Enable wiki for the project | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_avatar_url"></a> [avatar\_url](#output\_avatar\_url) | The URL of the avatar image |
| <a name="output_empty_repo"></a> [empty\_repo](#output\_empty\_repo) | Whether the project is empty |
| <a name="output_http_url_to_repo"></a> [http\_url\_to\_repo](#output\_http\_url\_to\_repo) | URL that can be provided to git clone to clone the project |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
| <a name="output_path_with_namespace"></a> [path\_with\_namespace](#output\_path\_with\_namespace) | The path of the repository with namespace |
| <a name="output_runners_token"></a> [runners\_token](#output\_runners\_token) | Registration token to use during runner setup |
| <a name="output_ssh_url_to_repo"></a> [ssh\_url\_to\_repo](#output\_ssh\_url\_to\_repo) | URL that can be provided to git clone to clone the project |
| <a name="output_web_url"></a> [web\_url](#output\_web\_url) | URL that can be used to find the project in a browser |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppe).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
