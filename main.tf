resource "gitlab_project" "this" {
  name                                             = var.name
  allow_merge_on_skipped_pipeline                  = var.allow_merge_on_skipped_pipeline
  analytics_access_level                           = var.analytics_access_level
  approvals_before_merge                           = var.approvals_before_merge
  archive_on_destroy                               = var.archive_on_destroy
  archived                                         = var.archived
  auto_cancel_pending_pipelines                    = var.auto_cancel_pending_pipelines
  auto_devops_deploy_strategy                      = var.auto_devops_deploy_strategy
  auto_devops_enabled                              = var.auto_devops_enabled
  autoclose_referenced_issues                      = var.autoclose_referenced_issues
  avatar                                           = var.avatar
  avatar_hash                                      = var.avatar_hash
  build_git_strategy                               = var.build_git_strategy
  build_timeout                                    = var.build_timeout
  builds_access_level                              = var.builds_access_level
  ci_config_path                                   = var.ci_config_path
  ci_default_git_depth                             = var.ci_default_git_depth
  ci_forward_deployment_enabled                    = var.ci_forward_deployment_enabled
  ci_separated_caches                              = var.ci_separated_caches
  container_registry_access_level                  = var.container_registry_access_level
  default_branch                                   = var.default_branch
  description                                      = var.description
  emails_enabled                                   = var.emails_enabled
  environments_access_level                        = var.environments_access_level
  external_authorization_classification_label      = var.external_authorization_classification_label
  feature_flags_access_level                       = var.feature_flags_access_level
  forked_from_project_id                           = var.forked_from_project_id
  forking_access_level                             = var.forking_access_level
  group_with_project_templates_id                  = var.group_with_project_templates_id
  import_url                                       = var.import_url
  import_url_password                              = var.import_url_password
  import_url_username                              = var.import_url_username
  infrastructure_access_level                      = var.infrastructure_access_level
  initialize_with_readme                           = var.initialize_with_readme
  issues_access_level                              = var.issues_access_level
  issues_enabled                                   = var.issues_enabled
  issues_template                                  = var.issues_template
  keep_latest_artifact                             = var.keep_latest_artifact
  lfs_enabled                                      = var.lfs_enabled
  merge_commit_template                            = var.merge_commit_template
  merge_method                                     = var.merge_method
  merge_pipelines_enabled                          = var.merge_pipelines_enabled
  merge_requests_access_level                      = var.merge_requests_access_level
  merge_requests_enabled                           = var.merge_requests_enabled
  merge_requests_template                          = var.merge_requests_template
  merge_trains_enabled                             = var.merge_trains_enabled
  mirror                                           = var.import_url != null ? var.mirror : null
  mirror_overwrites_diverged_branches              = var.import_url != null ? var.mirror_overwrites_diverged_branches : null
  mirror_trigger_builds                            = var.import_url != null ? var.mirror_trigger_builds : null
  monitor_access_level                             = var.monitor_access_level
  mr_default_target_self                           = var.forked_from_project_id != null ? var.mr_default_target_self : null
  namespace_id                                     = var.namespace_id
  only_allow_merge_if_all_discussions_are_resolved = var.only_allow_merge_if_all_discussions_are_resolved
  only_allow_merge_if_pipeline_succeeds            = var.only_allow_merge_if_pipeline_succeeds
  only_mirror_protected_branches                   = var.import_url != null ? var.only_mirror_protected_branches : null
  packages_enabled                                 = var.packages_enabled
  pages_access_level                               = var.pages_access_level
  path                                             = var.path
  printing_merge_request_link_enabled              = var.printing_merge_request_link_enabled
  public_jobs                                      = var.public_jobs
  releases_access_level                            = var.releases_access_level
  remove_source_branch_after_merge                 = var.remove_source_branch_after_merge
  repository_access_level                          = var.repository_access_level
  repository_storage                               = var.repository_storage
  request_access_enabled                           = var.request_access_enabled
  requirements_access_level                        = var.requirements_access_level
  resolve_outdated_diff_discussions                = var.resolve_outdated_diff_discussions
  restrict_user_defined_variables                  = var.restrict_user_defined_variables
  security_and_compliance_access_level             = var.security_and_compliance_access_level
  shared_runners_enabled                           = var.shared_runners_enabled
  skip_wait_for_default_branch_protection          = var.skip_wait_for_default_branch_protection
  snippets_access_level                            = var.snippets_access_level
  snippets_enabled                                 = var.snippets_enabled
  squash_commit_template                           = var.squash_commit_template
  squash_option                                    = var.squash_option
  suggestion_commit_message                        = var.suggestion_commit_message
  tags                                             = var.tags
  template_name                                    = var.template_name
  template_project_id                              = var.template_project_id
  topics                                           = var.topics
  use_custom_template                              = var.use_custom_template
  visibility_level                                 = var.visibility_level
  wiki_access_level                                = var.wiki_access_level
  wiki_enabled                                     = var.wiki_enabled

  dynamic "container_expiration_policy" {
    for_each = var.container_expiration_policy

    content {
      cadence           = lookup(container_expiration_policy.value, "cadence", "1d")
      enabled           = lookup(container_expiration_policy.value, "enabled", false)
      keep_n            = lookup(container_expiration_policy.value, "keep_n", 10)
      name_regex_delete = lookup(container_expiration_policy.value, "name_regex_delete", ".*")
      name_regex_keep   = lookup(container_expiration_policy.value, "name_regex_keep", null)
      older_than        = lookup(container_expiration_policy.value, "older_than", "90d")
    }
  }

  dynamic "push_rules" {
    for_each = var.push_rules

    content {
      author_email_regex            = lookup(push_rules.value, "author_email_regex", null)
      branch_name_regex             = lookup(push_rules.value, "branch_name_regex", null)
      commit_committer_check        = lookup(push_rules.value, "commit_committer_check", false)
      commit_message_negative_regex = lookup(push_rules.value, "commit_message_negative_regex", null)
      commit_message_regex          = lookup(push_rules.value, "commit_message_regex", null)
      deny_delete_tag               = lookup(push_rules.value, "deny_delete_tag", false)
      file_name_regex               = lookup(push_rules.value, "file_name_regex", null)
      max_file_size                 = lookup(push_rules.value, "max_file_size", 0)
      member_check                  = lookup(push_rules.value, "member_check", false)
      prevent_secrets               = lookup(push_rules.value, "prevent_secrets", false)
      reject_unsigned_commits       = lookup(push_rules.value, "reject_unsigned_commits", false)
    }
  }
}
