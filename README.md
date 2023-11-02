# terraform-gitlab-project

Terraform module to manage the following GitLab resources:

* gitlab_project

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_project" {
  source = "git::ssh://git@gitlab.com:terraform-child-modules1/terraform-gitlab-project.git"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 16.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppe).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
