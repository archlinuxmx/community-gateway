terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
  required_version = ">= 0.14"
}

provider "linode" {
  token                    = var.linode_token
  skip_instance_ready_poll = true
}

module "linode_instance" {
  source = "./linode_instance"

  tags                                         = var.tags
  region                                       = var.region
  linode_instance_community_gateway_label      = var.linode_instance_community_gateway_label
  linode_instance_community_gateway_group      = var.linode_instance_community_gateway_group
  linode_instance_community_gateway_image      = var.linode_instance_community_gateway_image
  linode_instance_community_gateway_type       = var.linode_instance_community_gateway_type
  linode_instance_community_gateway_swap_size  = var.linode_instance_community_gateway_swap_size
  linode_instance_community_gateway_private_ip = var.linode_instance_community_gateway_private_ip
}
