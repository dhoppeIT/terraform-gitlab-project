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

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 18.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gitlab_project"></a> [gitlab\_project](#module\_gitlab\_project) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [gitlab_group.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_url"></a> [base\_url](#input\_base\_url) | This is the target GitLab base API endpoint | `string` | `null` | no |
| <a name="input_cacert_file"></a> [cacert\_file](#input\_cacert\_file) | This is a file containing the ca cert to verify the gitlab instance | `string` | `null` | no |
| <a name="input_client_cert"></a> [client\_cert](#input\_client\_cert) | File path to client certificate when GitLab instance is behind company proxy | `string` | `null` | no |
| <a name="input_client_key"></a> [client\_key](#input\_client\_key) | File path to client key when GitLab instance is behind company proxy | `string` | `null` | no |
| <a name="input_early_auth_check"></a> [early\_auth\_check](#input\_early\_auth\_check) | By default the provider does a dummy request to get the current user in order to verify that the provider configuration is correct and the GitLab API is reachable | `bool` | `true` | no |
| <a name="input_headers"></a> [headers](#input\_headers) | A map of headers to append to all API request to the GitLab instance | `map(string)` | `{}` | no |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | When set to true this disables SSL verification of the connection to the GitLab instance | `bool` | `false` | no |
| <a name="input_retries"></a> [retries](#input\_retries) | The number of retries to execute when receiving a 429 Rate Limit error | `number` | `null` | no |
| <a name="input_token"></a> [token](#input\_token) | The OAuth2 Token, Project, Group, Personal Access Token or CI Job Token used to connect to GitLab | `string` | `null` | no |

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
<!-- END_TF_DOCS -->
