terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
  required_version = ">= 0.14"
}

provider "linode" {
  token = var.linode_token
}

module "linode_instance" {
  source = "./linode_instance"

  linode_instance_community_gateway_authorized_keys = module.linode_sshkey.community_gateway_sshkey

  tags                                         = var.tags
  region                                       = var.region
  linode_instance_community_gateway_label      = var.linode_instance_community_gateway_label
  linode_instance_community_gateway_group      = var.linode_instance_community_gateway_group
  linode_instance_community_gateway_image      = var.linode_instance_community_gateway_image
  linode_instance_community_gateway_type       = var.linode_instance_community_gateway_type
  linode_instance_community_gateway_root_pass  = var.linode_instance_community_gateway_root_pass
  linode_instance_community_gateway_swap_size  = var.linode_instance_community_gateway_swap_size
  linode_instance_community_gateway_private_ip = var.linode_instance_community_gateway_private_ip
}

module "linode_sshkey" {
  source = "./linode_sshkey"

  linode_sshkey_community_gateway_key   = var.linode_sshkey_community_gateway_key
  linode_sshkey_community_gateway_label = var.linode_sshkey_community_gateway_label
}
