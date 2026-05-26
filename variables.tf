variable "name" {
  type        = string
  description = "The name of the project"
}

variable "allow_merge_on_skipped_pipeline" {
  type        = bool
  default     = false
  description = "Set to true if you want to treat skipped pipelines as if they finished with success"
}

variable "allow_pipeline_trigger_approve_deployment" {
  type        = bool
  default     = null
  description = "Set whether or not a pipeline triggerer is allowed to approve deployments. Premium and Ultimate only"
}

variable "analytics_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the analytics access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.analytics_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "archive_on_destroy" {
  type        = bool
  default     = null
  description = "Set to true to archive the project instead of deleting on destroy"
}

variable "archived" {
  type        = bool
  default     = false
  description = "Whether the project is in read-only mode (archived)"
}

variable "auto_cancel_pending_pipelines" {
  type        = string
  default     = "enabled"
  description = "Auto-cancel pending pipelines"
}

variable "auto_devops_deploy_strategy" {
  type        = string
  default     = "continuous"
  description = "Auto Deploy strategy"

  validation {
    condition     = contains(["continuous", "manual", "timed_incremental"], var.auto_devops_deploy_strategy)
    error_message = "Valid values are continuous, manual, timed_incremental"
  }
}

variable "auto_devops_enabled" {
  type        = bool
  default     = false
  description = "Enable Auto DevOps for this project"
}

variable "auto_duo_code_review_enabled" {
  type        = bool
  default     = null
  description = "Enable automatic reviews by GitLab Duo on merge requests. Ultimate only"
}

variable "autoclose_referenced_issues" {
  type        = bool
  default     = true
  description = "Set whether auto-closing referenced issues on default branch"
}

variable "avatar" {
  type        = string
  default     = null
  description = "A local path to the avatar image to upload"
}

variable "avatar_hash" {
  type        = string
  default     = null
  description = "The hash of the avatar image"
}

variable "branches" {
  type        = string
  default     = null
  description = "Branches to fork (empty for all branches)"
}

variable "build_git_strategy" {
  type        = string
  default     = "fetch"
  description = "The Git strategy"

  validation {
    condition     = contains(["clone", "fetch"], var.build_git_strategy)
    error_message = "Valid values are clone, fetch"
  }
}

variable "build_timeout" {
  type        = number
  default     = 3600
  description = "The maximum amount of time, in seconds, that a job can run"
}

variable "builds_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the builds access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.builds_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "ci_config_path" {
  type        = string
  default     = null
  description = "Custom Path to CI config file"
}

variable "ci_default_git_depth" {
  type        = number
  default     = 20
  description = "Default number of revisions for shallow cloning"
}

variable "ci_delete_pipelines_in_seconds" {
  type        = number
  default     = null
  description = "Pipelines older than the configured time are deleted"
}

variable "ci_forward_deployment_enabled" {
  type        = bool
  default     = true
  description = "When a new deployment job starts, skip older deployment jobs that are still pending"
}

variable "ci_forward_deployment_rollback_allowed" {
  type        = bool
  default     = true
  description = "Allow job retries even if the deployment job is outdated"
}

variable "ci_id_token_sub_claim_components" {
  type = list(string)
  default = [
    "project_path",
    "ref_type",
    "ref"
  ]
  description = "Fields included in the sub claim of the ID Token"
}

variable "ci_pipeline_variables_minimum_override_role" {
  type        = string
  default     = "developer"
  description = "The minimum role required to set variables when running pipelines and jobs"

  validation {
    condition     = contains(["developer", "maintainer", "owner", "no_one_allowed"], var.ci_pipeline_variables_minimum_override_role)
    error_message = "Valid values are developer, maintainer, owner, no_one_allowed"
  }
}

variable "ci_push_repository_for_job_token_allowed" {
  type        = bool
  default     = true
  description = "Allow Git push requests to your project repository that are authenticated with a CI/CD job token"
}

variable "ci_restrict_pipeline_cancellation_role" {
  type        = string
  default     = null
  description = "The role required to cancel a pipeline or job. Premium and Ultimate only"

  validation {
    condition     = var.ci_restrict_pipeline_cancellation_role == null || contains(["developer", "maintainer", "no one"], var.ci_restrict_pipeline_cancellation_role)
    error_message = "Valid values are developer, maintainer, no one"
  }
}

variable "ci_separated_caches" {
  type        = bool
  default     = true
  description = "Use separate caches for protected branches"
}

variable "container_expiration_policy" {
  type = object({
    cadence           = optional(string, "1d")
    enabled           = optional(bool, false)
    keep_n            = optional(number, 10)
    name_regex_delete = optional(string, ".*")
    name_regex_keep   = optional(string, null)
    older_than        = optional(string, "90d")
  })
  default     = null
  description = "Set the image cleanup policy for this project"
}

variable "container_registry_access_level" {
  type        = string
  default     = "enabled"
  description = "Set visibility of container registry, for this project"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.container_registry_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "default_branch" {
  type        = string
  default     = "main"
  description = "The default branch for the project"
}

variable "description" {
  type        = string
  default     = null
  description = "A description of the project"
}

variable "emails_enabled" {
  type        = bool
  default     = true
  description = "Enable email notifications"
}

variable "environments_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the environments access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.environments_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "external_authorization_classification_label" {
  type        = string
  default     = null
  description = "The classification label for the project"
}

variable "feature_flags_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the feature flags access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.feature_flags_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "forked_from_project_id" {
  type        = number
  default     = null
  description = "The ID of the project to fork"
}

variable "forking_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the forking access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.forking_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "group_runners_enabled" {
  type        = bool
  default     = true
  description = "Enable group runners for this project"
}

variable "group_with_project_templates_id" {
  type        = number
  default     = null
  description = "For group-level custom templates, specifies ID of group from which all the custom project templates are sourced"
}

variable "import_url" {
  type        = string
  default     = null
  description = "Git URL to a repository to be imported"
}

variable "import_url_password" {
  type        = string
  sensitive   = true
  default     = null
  description = "The password for the import_url"
}

variable "import_url_username" {
  type        = string
  default     = null
  description = "The username for the import_url"
}

variable "infrastructure_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the infrastructure access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.infrastructure_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "initialize_with_readme" {
  type        = bool
  default     = true
  description = "Create main branch with first commit containing a README.md file"
}

variable "issues_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the issues access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.issues_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "issues_template" {
  type        = string
  default     = null
  description = "Sets the template for new issues in the project"
}

variable "keep_latest_artifact" {
  type        = bool
  default     = true
  description = "Disable or enable the ability to keep the latest artifact for this project"
}

variable "lfs_enabled" {
  type        = bool
  default     = true
  description = "Enable LFS for the project"
}

variable "max_artifacts_size" {
  type        = number
  default     = null
  description = "The maximum file size in megabytes for individual job artifacts"
}

variable "merge_commit_template" {
  type        = string
  default     = null
  description = "Template used to create merge commit message in merge requests"
}

variable "merge_method" {
  type        = string
  default     = "merge"
  description = "Set the merge method"

  validation {
    condition     = contains(["merge", "rebase_merge", "ff"], var.merge_method)
    error_message = "Valid values are merge, rebase_merge, ff"
  }
}

variable "merge_pipelines_enabled" {
  type        = bool
  default     = false
  description = "Enable or disable merge pipelines"
}

variable "merge_request_title_regex" {
  type        = string
  default     = null
  description = "Set the regex pattern that merge request titles must match"
}

variable "merge_request_title_regex_description" {
  type        = string
  default     = null
  description = "Set the description shown to users when a merge request title does not match merge_request_title_regex"
}

variable "merge_requests_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the merge requests access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.merge_requests_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "merge_requests_template" {
  type        = string
  default     = null
  description = "Sets the template for new merge requests in the project"
}

variable "merge_trains_enabled" {
  type        = bool
  default     = false
  description = "Enable or disable merge trains"
}

variable "merge_trains_skip_train_allowed" {
  type        = bool
  default     = false
  description = "Allows merge train merge requests to be merged without waiting for pipelines to finish"
}

variable "model_experiments_access_level" {
  type        = string
  default     = "enabled"
  description = "Set visibility of machine learning model experiments"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.model_experiments_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "model_registry_access_level" {
  type        = string
  default     = "enabled"
  description = "Set visibility of machine learning model registry"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.model_registry_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "monitor_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the monitor access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.monitor_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "mr_default_target_self" {
  type        = bool
  default     = false
  description = "For forked projects, target merge requests to this project"
}

variable "namespace_id" {
  type        = number
  default     = null
  description = "The namespace (group or user) of the project"
}

variable "only_allow_merge_if_all_discussions_are_resolved" {
  type        = bool
  default     = false
  description = "Set to true if you want allow merges only if all discussions are resolved"
}

variable "only_allow_merge_if_pipeline_succeeds" {
  type        = bool
  default     = false
  description = "Set to true if you want allow merges only if a pipeline succeeds"
}

variable "package_registry_access_level" {
  type        = string
  default     = null
  description = "Set visibility of the package registry"

  validation {
    condition     = var.package_registry_access_level == null || contains(["disabled", "private", "enabled", "public"], var.package_registry_access_level)
    error_message = "Valid values are disabled, private, enabled, public"
  }
}

variable "packages_enabled" {
  type        = bool
  default     = true
  description = "Enable packages repository for the project"
}

variable "pages_access_level" {
  type        = string
  default     = "private"
  description = "Enable pages access control"

  validation {
    condition     = contains(["public", "private", "enabled", "disabled"], var.pages_access_level)
    error_message = "Valid values are public, private, enabled, disabled"
  }
}

variable "path" {
  type        = string
  default     = null
  description = "The path of the repository"
}

variable "permanently_delete_on_destroy" {
  type        = bool
  default     = null
  description = "Set to true to immediately permanently delete the project instead of scheduling a delete. Premium and Ultimate only"
}

variable "pre_receive_secret_detection_enabled" {
  type        = bool
  default     = null
  description = "Whether Secret Push Detection is enabled. Requires GitLab Ultimate"
}

variable "prevent_merge_without_jira_issue" {
  type        = bool
  default     = null
  description = "Set whether merge requests require an associated issue from Jira. Premium and Ultimate only"
}

variable "printing_merge_request_link_enabled" {
  type        = bool
  default     = true
  description = "Show link to create/view merge request when pushing from the command line"
}

variable "public_jobs" {
  type        = bool
  default     = true
  description = "If true, jobs can be viewed by non-project members"
}

variable "push_rules" {
  type = object({
    author_email_regex            = optional(string, null)
    branch_name_regex             = optional(string, null)
    commit_committer_check        = optional(bool, false)
    commit_committer_name_check   = optional(bool, false)
    commit_message_negative_regex = optional(string, null)
    commit_message_regex          = optional(string, null)
    deny_delete_tag               = optional(bool, false)
    file_name_regex               = optional(string, null)
    max_file_size                 = optional(number, 0)
    member_check                  = optional(bool, false)
    prevent_secrets               = optional(bool, false)
    reject_non_dco_commits        = optional(bool, false)
    reject_unsigned_commits       = optional(bool, false)
  })
  default     = null
  description = "Push rules for the project"
}

variable "releases_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the releases access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.releases_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "remove_source_branch_after_merge" {
  type        = bool
  default     = true
  description = "Enable Delete source branch option by default for all new merge requests"
}

variable "repository_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the repository access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.repository_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "repository_storage" {
  type        = string
  default     = null
  description = "Which storage shard the repository is on"
}

variable "request_access_enabled" {
  type        = bool
  default     = true
  description = "Allow users to request member access"
}

variable "requirements_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the requirements access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.requirements_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "resolve_outdated_diff_discussions" {
  type        = bool
  default     = false
  description = "Automatically resolve merge request diffs discussions on lines changed with a push"
}

variable "resource_group_default_process_mode" {
  type        = string
  default     = "unordered"
  description = "The default resource group process mode for the project"
}

variable "security_and_compliance_access_level" {
  type        = string
  default     = "private"
  description = "Set the security and compliance access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.security_and_compliance_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "shared_runners_enabled" {
  type        = bool
  default     = true
  description = "Enable shared runners for this project"
}

variable "skip_wait_for_default_branch_protection" {
  type        = bool
  default     = false
  description = "If true, the default behavior to wait for the default branch protection to be created is skipped"
}

variable "snippets_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the snippets access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.snippets_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}

variable "squash_commit_template" {
  type        = string
  default     = null
  description = "Template used to create squash commit message in merge requests"
}

variable "squash_option" {
  type        = string
  default     = "default_off"
  description = "Squash commits when merge request is merged"

  validation {
    condition     = contains(["never", "always", "default_on", "default_off"], var.squash_option)
    error_message = "Valid values are never, always, default_on, default_off"
  }
}

variable "suggestion_commit_message" {
  type        = string
  default     = null
  description = "The commit message used to apply merge request suggestions"
}

variable "template_name" {
  type        = string
  default     = null
  description = "When used without use_custom_template, name of a built-in project template"
}

variable "template_project_id" {
  type        = number
  default     = null
  description = "When used with use_custom_template, project ID of a custom project template"
}

variable "timeouts" {
  type = object({
    create = optional(string, null)
    delete = optional(string, null)
  })
  default     = null
  description = "Timeout configuration for create and delete operations"
}

variable "topics" {
  type        = set(string)
  default     = []
  description = "The list of topics for the project"
}

variable "use_custom_template" {
  type        = bool
  default     = false
  description = "Use either custom instance or group (with group_with_project_templates_id) project template (enterprise edition)"
}

variable "visibility_level" {
  type        = string
  default     = "private"
  description = "Set to public to create a public project"

  validation {
    condition     = contains(["private", "internal", "public"], var.visibility_level)
    error_message = "Valid values are private, internal, public"
  }
}

variable "wiki_access_level" {
  type        = string
  default     = "enabled"
  description = "Set the wiki access level"

  validation {
    condition     = contains(["disabled", "private", "enabled"], var.wiki_access_level)
    error_message = "Valid values are disabled, private, enabled"
  }
}
