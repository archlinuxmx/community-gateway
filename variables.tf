################################################################################
# Project wide variables
################################################################################
variable "vultr_api_key" {
  type        = string
  description = "The API Key to authenticate with Vultr's API."
}


################################################################################
# vultr_server irc_bridge variables
################################################################################
variable "vultr_server_irc_bridge_plan_id" {
  type = string
}

variable "vultr_server_irc_bridge_region_id" {
  type = string
}

variable "vultr_server_irc_bridge_iso_id" {
  type = number
}

variable "vultr_server_irc_bridge_label" {
  type = string
}

variable "vultr_server_irc_bridge_tag" {
  type = string
}

variable "vultr_server_irc_bridge_hostname" {
  type = string
}

variable "vultr_server_irc_bridge_user_data" {
  type = string
}

variable "vultr_server_irc_bridge_enable_ipv6" {
  type = bool
}

variable "vultr_server_irc_bridge_auto_backup" {
  type = bool
}

variable "vultr_server_irc_bridge_ddos_protection" {
  type = bool
}

variable "vultr_server_irc_bridge_notify_activate" {
  type = bool
}


################################################################################
# irc_bridge_firewall variables
################################################################################
variable "vultr_firewall_group_irc_bridge_firewall_group_description" {
  type = string
}

variable "vultr_firewall_irc_bridge_firewall_rule_ssh_port" {
  type = string
}

variable "vultr_firewall_irc_bridge_firewall_rule_ssh_network" {
  type = string
}

variable "vultr_firewall_irc_bridge_firewall_rule_irc_port" {
  type = string
}

variable "vultr_firewall_irc_bridge_firewall_rule_irc_network" {
  type = string
}

variable "vultr_firewall_irc_bridge_firewall_rule_https_port" {
  type = string
}

variable "vultr_firewall_irc_bridge_firewall_rule_https_network" {
  type = string
}
