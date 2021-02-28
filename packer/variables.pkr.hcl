variable "linode_token" {
  type        = string
  sensitive   = true
  description = "The client token to use to access your account."
}

variable "ssh_username" {
  type        = string
  default     = "root"
  description = "The SSH username used by the Packer communicator."
}

variable "community_gateway_image" {
  type        = string
  default     = "linode/arch"
  description = "The image ID used to create the new image."
}

variable "community_gateway_region" {
  type        = string
  default     = "us-central"
  description = "The ID of the region to store the Linode image in."
}

variable "community_gateway_instance_type" {
  type        = string
  default     = "g6-nanode-1"
  description = "The Linode instance type that defines the pricing, CPU, disk, and RAM specs of the instance."
}

variable "community_gateway_instance_label" {
  type        = string
  default     = "community_gateway"
  description = "The name assigned to the Linode Instance."
}

variable "community_gateway_instance_tags" {
  type        = list(string)
  default     = ["community_gateway", "archlinuxmx"]
  description = "The tags to apply to the image when it is created."
}

variable "community_gateway_swap_size" {
  type        = string
  default     = 512
  description = "The disk size (MiB) allocated for swap space."
}

variable "community_gateway_image_label" {
  type        = string
  default     = "community_gateway"
  description = "The name of the resulting image that will appear in your Linode account."
}

variable "community_gateway_image_description" {
  type        = string
  default     = "The Linode image for the community gateway project"
  description = "The description of the resulting image that will appear in your account."
}
