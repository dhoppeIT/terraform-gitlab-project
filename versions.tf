terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 16.8.0"
    }
  }

  required_version = ">= 1.0"
}
