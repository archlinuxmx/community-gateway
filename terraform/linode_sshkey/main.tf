resource "linode_sshkey" "community_gateway_sshkey" {
  label   = var.linode_sshkey_community_gateway_label
  ssh_key = chomp(file(var.linode_sshkey_community_gateway_key))
}
