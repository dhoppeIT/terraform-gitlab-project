resource "gitlab_project" "this" {
  name = var.name

  allow_merge_on_skipped_pipeline                  = var.allow_merge_on_skipped_pipeline
  allow_pipeline_trigger_approve_deployment        = var.allow_pipeline_trigger_approve_deployment
  analytics_access_level                           = var.analytics_access_level
  archive_on_destroy                               = var.archive_on_destroy
  archived                                         = var.archived
  auto_cancel_pending_pipelines                    = var.auto_cancel_pending_pipelines
  auto_devops_deploy_strategy                      = var.auto_devops_deploy_strategy
  auto_devops_enabled                              = var.auto_devops_enabled
  auto_duo_code_review_enabled                     = var.auto_duo_code_review_enabled
  autoclose_referenced_issues                      = var.autoclose_referenced_issues
  avatar                                           = var.avatar
  avatar_hash                                      = var.avatar_hash
  branches                                         = var.forked_from_project_id != null ? var.branches : null
  build_git_strategy                               = var.build_git_strategy
  build_timeout                                    = var.build_timeout
  builds_access_level                              = var.builds_access_level
  ci_config_path                                   = var.ci_config_path
  ci_default_git_depth                             = var.ci_default_git_depth
  ci_delete_pipelines_in_seconds                   = var.ci_delete_pipelines_in_seconds
  ci_forward_deployment_enabled                    = var.ci_forward_deployment_enabled
  ci_forward_deployment_rollback_allowed           = var.ci_forward_deployment_rollback_allowed
  ci_id_token_sub_claim_components                 = var.ci_id_token_sub_claim_components
  ci_pipeline_variables_minimum_override_role      = var.ci_pipeline_variables_minimum_override_role
  ci_push_repository_for_job_token_allowed         = var.ci_push_repository_for_job_token_allowed
  ci_restrict_pipeline_cancellation_role           = var.ci_restrict_pipeline_cancellation_role
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
  group_runners_enabled                            = var.group_runners_enabled
  group_with_project_templates_id                  = var.group_with_project_templates_id
  import_url                                       = var.import_url
  import_url_password                              = var.import_url_password
  import_url_username                              = var.import_url_username
  infrastructure_access_level                      = var.infrastructure_access_level
  initialize_with_readme                           = var.initialize_with_readme
  issues_access_level                              = var.issues_access_level
  issues_template                                  = var.issues_template
  keep_latest_artifact                             = var.keep_latest_artifact
  lfs_enabled                                      = var.lfs_enabled
  max_artifacts_size                               = var.max_artifacts_size
  merge_commit_template                            = var.merge_commit_template
  merge_method                                     = var.merge_method
  merge_pipelines_enabled                          = var.merge_pipelines_enabled
  merge_request_title_regex                        = var.merge_request_title_regex
  merge_request_title_regex_description            = var.merge_request_title_regex_description
  merge_requests_access_level                      = var.merge_requests_access_level
  merge_requests_template                          = var.merge_requests_template
  merge_trains_enabled                             = var.merge_trains_enabled
  merge_trains_skip_train_allowed                  = var.merge_trains_skip_train_allowed
  model_experiments_access_level                   = var.model_experiments_access_level
  model_registry_access_level                      = var.model_registry_access_level
  monitor_access_level                             = var.monitor_access_level
  mr_default_target_self                           = var.forked_from_project_id != null ? var.mr_default_target_self : null
  namespace_id                                     = var.namespace_id
  only_allow_merge_if_all_discussions_are_resolved = var.only_allow_merge_if_all_discussions_are_resolved
  only_allow_merge_if_pipeline_succeeds            = var.only_allow_merge_if_pipeline_succeeds
  package_registry_access_level                    = var.package_registry_access_level
  packages_enabled                                 = var.packages_enabled
  pages_access_level                               = var.pages_access_level
  path                                             = var.path
  permanently_delete_on_destroy                    = var.permanently_delete_on_destroy
  pre_receive_secret_detection_enabled             = var.pre_receive_secret_detection_enabled
  prevent_merge_without_jira_issue                 = var.prevent_merge_without_jira_issue
  printing_merge_request_link_enabled              = var.printing_merge_request_link_enabled
  public_jobs                                      = var.public_jobs
  releases_access_level                            = var.releases_access_level
  remove_source_branch_after_merge                 = var.remove_source_branch_after_merge
  repository_access_level                          = var.repository_access_level
  repository_storage                               = var.repository_storage
  request_access_enabled                           = var.request_access_enabled
  requirements_access_level                        = var.requirements_access_level
  resolve_outdated_diff_discussions                = var.resolve_outdated_diff_discussions
  resource_group_default_process_mode              = var.resource_group_default_process_mode
  security_and_compliance_access_level             = var.security_and_compliance_access_level
  shared_runners_enabled                           = var.shared_runners_enabled
  skip_wait_for_default_branch_protection          = var.skip_wait_for_default_branch_protection
  snippets_access_level                            = var.snippets_access_level
  squash_commit_template                           = var.squash_commit_template
  squash_option                                    = var.squash_option
  suggestion_commit_message                        = var.suggestion_commit_message
  template_name                                    = var.template_name
  template_project_id                              = var.template_project_id
  topics                                           = var.topics
  use_custom_template                              = var.use_custom_template
  visibility_level                                 = var.visibility_level
  wiki_access_level                                = var.wiki_access_level

  dynamic "container_expiration_policy" {
    for_each = var.container_expiration_policy != null ? [var.container_expiration_policy] : []

    content {
      cadence           = container_expiration_policy.value.cadence
      enabled           = container_expiration_policy.value.enabled
      keep_n            = container_expiration_policy.value.keep_n
      name_regex_delete = container_expiration_policy.value.name_regex_delete
      name_regex_keep   = container_expiration_policy.value.name_regex_keep
      older_than        = container_expiration_policy.value.older_than
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts != null ? [var.timeouts] : []

    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }

  dynamic "push_rules" {
    for_each = var.push_rules != null ? [var.push_rules] : []

    content {
      author_email_regex            = push_rules.value.author_email_regex
      branch_name_regex             = push_rules.value.branch_name_regex
      commit_committer_check        = push_rules.value.commit_committer_check
      commit_committer_name_check   = push_rules.value.commit_committer_name_check
      commit_message_negative_regex = push_rules.value.commit_message_negative_regex
      commit_message_regex          = push_rules.value.commit_message_regex
      deny_delete_tag               = push_rules.value.deny_delete_tag
      file_name_regex               = push_rules.value.file_name_regex
      max_file_size                 = push_rules.value.max_file_size
      member_check                  = push_rules.value.member_check
      prevent_secrets               = push_rules.value.prevent_secrets
      reject_non_dco_commits        = push_rules.value.reject_non_dco_commits
      reject_unsigned_commits       = push_rules.value.reject_unsigned_commits
    }
  }
}
