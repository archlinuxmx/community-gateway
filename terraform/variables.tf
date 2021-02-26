################################################################################
# Project wide variables
################################################################################
variable "linode_token" {
  type        = string
  description = "The API Key to authenticate with Linode's API."
}

variable "tags" {
  type        = list(string)
  description = "A list of tags applied to resources in this repository. Tags are for organizational purposes only."
}

################################################################################
# linode_instance community_gateway variables
################################################################################
variable "linode_instance_community_gateway_label" {
  type        = string
  description = "The label to be displayed in Linode's servers"
}

variable "linode_instance_community_gateway_group" {
  type        = string
  description = "The display group of the Linode instance."
}


variable "linode_instance_community_gateway_image" {
  type        = string
  description = "The OS image used to deploy the instance"
}

variable "linode_instance_community_gateway_region" {
  type        = string
  description = "The Linode region where the instance is deployed"
}

variable "linode_instance_community_gateway_type" {
  type        = string
  description = "The Linode type of the instance"
}

variable "linode_instance_community_gateway_root_pass" {
  type        = string
  sensitive   = true
  description = "The password for the root user"
}

variable "linode_instance_community_gateway_swap_size" {
  type        = string
  description = "The swap disk size of the instance"
}

variable "linode_instance_community_gateway_private_ip" {
  type        = bool
  description = "The private IP address for private networking"
}


################################################################################
# linode_sshkey community_gateway variables
################################################################################
variable "linode_sshkey_community_gateway_label" {
  type        = string
  description = "The label of the SSH key that is attached to the instance"
}

variable "linode_sshkey_community_gateway_key" {
  type        = string
  description = "The path to the SSH key that is attached to the instance"
}


################################################################################
# linode_firewall community_gateway variables
################################################################################
variable "linode_firewall_community_gateway_label" {
  type        = string
  description = "The label of the web application firewall"
}
