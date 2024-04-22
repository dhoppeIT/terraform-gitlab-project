terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 16.11"
    }
  }

  required_version = ">= 1.0"
}
