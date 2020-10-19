################################################################################
# vultr_firewall module variables
################################################################################
variable "irc_bridge_firewall_group_description" {
  type = string
}

variable "irc_bridge_firewall_rule_ssh_port" {
  type = string
}

variable "irc_bridge_firewall_rule_ssh_network" {
  type = string
}

variable "irc_bridge_firewall_rule_irc_port" {
  type = string
}

variable "irc_bridge_firewall_rule_irc_network" {
  type = string
}

variable "irc_bridge_firewall_rule_https_port" {
  type = string
}

variable "irc_bridge_firewall_rule_https_network" {
  type = string
}
