terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 16.6.0"
    }
  }

  required_version = ">= 1.0"
}
