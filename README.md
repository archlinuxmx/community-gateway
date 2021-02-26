## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14 |

## Providers

No provider.

## Modules

| Name | Source | Version |
|------|--------|---------|
| linode_instance | ./linode_instance |  |
| linode_sshkey | ./linode_sshkey |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| linode\_firewall\_community\_gateway\_label | The label of the web application firewall | `string` | n/a | yes |
| linode\_instance\_community\_gateway\_group | The display group of the Linode instance. | `string` | n/a | yes |
| linode\_instance\_community\_gateway\_image | The OS image used to deploy the instance | `string` | n/a | yes |
| linode\_instance\_community\_gateway\_label | The label to be displayed in Linode's servers | `string` | n/a | yes |
| linode\_instance\_community\_gateway\_private\_ip | The private IP address for private networking | `bool` | n/a | yes |
| linode\_instance\_community\_gateway\_region | The Linode region where the instance is deployed | `string` | n/a | yes |
| linode\_instance\_community\_gateway\_root\_pass | The password for the root user | `string` | n/a | yes |
| linode\_instance\_community\_gateway\_swap\_size | The swap disk size of the instance | `string` | n/a | yes |
| linode\_instance\_community\_gateway\_type | The Linode type of the instance | `string` | n/a | yes |
| linode\_sshkey\_community\_gateway\_key | The path to the SSH key that is attached to the instance | `string` | n/a | yes |
| linode\_sshkey\_community\_gateway\_label | The label of the SSH key that is attached to the instance | `string` | n/a | yes |
| linode\_token | The API Key to authenticate with Linode's API. | `string` | n/a | yes |
| tags | A list of tags applied to resources in this repository. Tags are for organizational purposes only. | `list(string)` | n/a | yes |

## Outputs

No output.
