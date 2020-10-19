resource "vultr_firewall_group" "irc_bridge_firewall" {
  description = var.irc_bridge_firewall_group_description
}

resource "vultr_firewall_rule" "irc_bridge_firewall_rule_ssh" {
  firewall_group_id = vultr_firewall_group.irc_bridge_firewall.id
  protocol          = "tcp"
  network           = var.irc_bridge_firewall_rule_ssh_network
  from_port         = var.irc_bridge_firewall_rule_ssh_port
}

resource "vultr_firewall_rule" "irc_bridge_firewall_rule_irc" {
  firewall_group_id = vultr_firewall_group.irc_bridge_firewall.id
  protocol          = "tcp"
  network           = var.irc_bridge_firewall_rule_irc_network
  from_port         = var.irc_bridge_firewall_rule_irc_port
}

resource "vultr_firewall_rule" "irc_bridge_firewall_rule_https" {
  firewall_group_id = vultr_firewall_group.irc_bridge_firewall.id
  protocol          = "tcp"
  network           = var.irc_bridge_firewall_rule_https_network
  from_port         = var.irc_bridge_firewall_rule_https_port
}
