resource "vultr_ssh_key" "irc_bridge_ssh_key" {
  name    = var.irc_bridge_ssh_key_name
  ssh_key = file(var.irc_bridge_ssh_public_key_path)
}
