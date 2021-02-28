resource "linode_instance" "community_gateway" {
  tags             = var.tags
  region           = var.region
  authorized_keys  = [var.linode_instance_community_gateway_authorized_keys]
  group            = var.linode_instance_community_gateway_group
  image            = var.linode_instance_community_gateway_image
  label            = var.linode_instance_community_gateway_label
  private_ip       = var.linode_instance_community_gateway_private_ip
  root_pass        = var.linode_instance_community_gateway_root_pass
  swap_size        = var.linode_instance_community_gateway_swap_size
  type             = var.linode_instance_community_gateway_type
  watchdog_enabled = true

  alerts {
    cpu = 85
  }
}
