################################################################################
# Project wide variables
################################################################################
variable "linode_token" {
  type        = string
  sensitive   = true
  description = "The client token to use to access your account."
}

variable "region" {
  type        = string
  default     = "us-central"
  description = "The location where the Linode is deployed."
}

variable "tags" {
  type        = list(string)
  default     = ["community_gateway", "archlinuxmx"]
  description = "The tags to apply to the resources when they are created."
}


################################################################################
# linode_instance community_gateway variables
################################################################################
variable "linode_instance_community_gateway_label" {
  type        = string
  default     = "community_gateway"
  description = "The name assigned to the Linode Instance."
}

variable "linode_instance_community_gateway_group" {
  type        = string
  default     = "community_gateway"
  description = "The display group of the Linode instance."
}


variable "linode_instance_community_gateway_image" {
  type        = string
  description = "The OS image used to deploy the instance."
}

variable "linode_instance_community_gateway_type" {
  type        = string
  default     = "g6-nanode-1"
  description = "The Linode instance type that defines the pricing, CPU, disk, and RAM specs of the instance."
}

variable "linode_instance_community_gateway_root_pass" {
  type        = string
  sensitive   = true
  description = "The password for the root user."
}

variable "linode_instance_community_gateway_swap_size" {
  type        = string
  default     = 512
  description = "The disk size (MiB) allocated for swap space."
}

variable "linode_instance_community_gateway_private_ip" {
  type        = bool
  default     = false
  description = "The private IP address for private networking."
}


################################################################################
# linode_sshkey community_gateway variables
################################################################################
variable "linode_sshkey_community_gateway_label" {
  type        = string
  default     = "diyu"
  description = "The label of the SSH key that is attached to the instance"
}

variable "linode_sshkey_community_gateway_key" {
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
  description = "The path to the SSH key that is attached to the instance"
}


################################################################################
# linode_firewall community_gateway variables
################################################################################
variable "linode_firewall_community_gateway_label" {
  type        = string
  default     = "community_gateway"
  description = "The label of the web application firewall"
}
