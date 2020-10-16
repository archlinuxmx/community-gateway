resource "vultr_server" "irc_bridge" {
  plan_id           = var.irc_bridge_plan_id
  region_id         = var.irc_bridge_region_id
  iso_id            = var.irc_bridge_iso_id
  label             = var.irc_bridge_label
  tag               = var.irc_bridge_tag
  hostname          = var.irc_bridge_hostname
  user_data         = var.irc_bridge_user_data
  enable_ipv6       = var.irc_bridge_enable_ipv6
  auto_backup       = var.irc_bridge_auto_backup
  ddos_protection   = var.irc_bridge_ddos_protection
  notify_activate   = var.irc_bridge_notify_activate
  firewall_group_id = var.irc_bridge_firewall_group_id
}
