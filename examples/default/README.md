# Example

The configuration in this directory creates:

* gitlab_project

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 16.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gitlab_project"></a> [gitlab\_project](#module\_gitlab\_project) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gitlab_project_avatar_url"></a> [gitlab\_project\_avatar\_url](#output\_gitlab\_project\_avatar\_url) | The URL of the avatar image |
| <a name="output_gitlab_project_empty_repo"></a> [gitlab\_project\_empty\_repo](#output\_gitlab\_project\_empty\_repo) | Whether the project is empty |
| <a name="output_gitlab_project_http_url_to_repo"></a> [gitlab\_project\_http\_url\_to\_repo](#output\_gitlab\_project\_http\_url\_to\_repo) | URL that can be provided to git clone to clone the project |
| <a name="output_gitlab_project_id"></a> [gitlab\_project\_id](#output\_gitlab\_project\_id) | The ID of this resource |
| <a name="output_gitlab_project_path_with_namespace"></a> [gitlab\_project\_path\_with\_namespace](#output\_gitlab\_project\_path\_with\_namespace) | The path of the repository with namespace |
| <a name="output_gitlab_project_runners_token"></a> [gitlab\_project\_runners\_token](#output\_gitlab\_project\_runners\_token) | Registration token to use during runner setup |
| <a name="output_gitlab_project_ssh_url_to_repo"></a> [gitlab\_project\_ssh\_url\_to\_repo](#output\_gitlab\_project\_ssh\_url\_to\_repo) | URL that can be provided to git clone to clone the project |
| <a name="output_gitlab_project_web_url"></a> [gitlab\_project\_web\_url](#output\_gitlab\_project\_web\_url) | URL that can be used to find the project in a browser |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
