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
| linode\_firewall\_community\_gateway\_label | The label of the web application firewall | `string` | `"community_gateway"` | no |
| linode\_instance\_community\_gateway\_group | The display group of the Linode instance. | `string` | `"community_gateway"` | no |
| linode\_instance\_community\_gateway\_image | The OS image used to deploy the instance. | `string` | n/a | yes |
| linode\_instance\_community\_gateway\_label | The name assigned to the Linode Instance. | `string` | `"community_gateway"` | no |
| linode\_instance\_community\_gateway\_private\_ip | The private IP address for private networking. | `bool` | `false` | no |
| linode\_instance\_community\_gateway\_root\_pass | The password for the root user. | `string` | n/a | yes |
| linode\_instance\_community\_gateway\_swap\_size | The disk size (MiB) allocated for swap space. | `string` | `512` | no |
| linode\_instance\_community\_gateway\_type | The Linode instance type that defines the pricing, CPU, disk, and RAM specs of the instance. | `string` | `"g6-nanode-1"` | no |
| linode\_sshkey\_community\_gateway\_key | The path to the SSH key that is attached to the instance | `string` | `"~/.ssh/id_ed25519.pub"` | no |
| linode\_sshkey\_community\_gateway\_label | The label of the SSH key that is attached to the instance | `string` | `"diyu"` | no |
| linode\_token | The client token to use to access your account. | `string` | n/a | yes |
| region | The location where the Linode is deployed. | `string` | `"us-central"` | no |
| tags | The tags to apply to the resources when they are created. | `list(string)` | <pre>[<br>  "community_gateway",<br>  "archlinuxmx"<br>]</pre> | no |

## Outputs

No output.
