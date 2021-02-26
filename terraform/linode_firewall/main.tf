resource "linode_firewall" "community_gateway" {
  label = var.linode_firewall_community_gateway_label
  tags  = ["test"]

  inbound {
    protocol  = "TCP"
    ports     = ["80"]
    addresses = ["0.0.0.0/0"]
  }

  outbound {
    protocol  = "TCP"
    ports     = ["80"]
    addresses = ["0.0.0.0/0"]
  }

  linodes = [var.linode_instance_community_gateway_id]
}
