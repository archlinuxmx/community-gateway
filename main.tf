terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
    }
  }
  required_version = ">= 0.13"
}

provider "vultr" {
  api_key = var.vultr_api_key
}

module "vultr_server" {
  source = "./modules/vultr_server"

  irc_bridge_firewall_group_id = module.vultr_firewall.irc_bridge_firewall_group_id
  irc_bridge_ssh_public_key_id = module.vultr_ssh_key.irc_bridge_ssh_key_id

  irc_bridge_ssh_private_key_path = var.ssh_key_path

  irc_bridge_plan_id         = var.vultr_server_irc_bridge_plan_id
  irc_bridge_region_id       = var.vultr_server_irc_bridge_region_id
  irc_bridge_iso_id          = var.vultr_server_irc_bridge_iso_id
  irc_bridge_label           = var.vultr_server_irc_bridge_label
  irc_bridge_tag             = var.vultr_server_irc_bridge_tag
  irc_bridge_hostname        = var.vultr_server_irc_bridge_hostname
  irc_bridge_user_data       = var.vultr_server_irc_bridge_user_data
  irc_bridge_enable_ipv6     = var.vultr_server_irc_bridge_enable_ipv6
  irc_bridge_auto_backup     = var.vultr_server_irc_bridge_auto_backup
  irc_bridge_ddos_protection = var.vultr_server_irc_bridge_ddos_protection
  irc_bridge_notify_activate = var.vultr_server_irc_bridge_notify_activate
}

module "vultr_firewall" {
  source = "./modules/vultr_firewall"

  irc_bridge_firewall_group_description  = var.vultr_firewall_group_irc_bridge_firewall_group_description
  irc_bridge_firewall_rule_ssh_port      = var.vultr_firewall_irc_bridge_firewall_rule_ssh_port
  irc_bridge_firewall_rule_ssh_network   = var.vultr_firewall_irc_bridge_firewall_rule_ssh_network
  irc_bridge_firewall_rule_irc_port      = var.vultr_firewall_irc_bridge_firewall_rule_irc_port
  irc_bridge_firewall_rule_irc_network   = var.vultr_firewall_irc_bridge_firewall_rule_irc_network
  irc_bridge_firewall_rule_https_port    = var.vultr_firewall_irc_bridge_firewall_rule_https_port
  irc_bridge_firewall_rule_https_network = var.vultr_firewall_irc_bridge_firewall_rule_https_network
}

module "vultr_ssh_key" {
  source = "./modules/vultr_ssh_key"

  irc_bridge_ssh_key_name        = var.vultr_ssh_key_irc_bridge_ssh_key_name
  irc_bridge_ssh_public_key_path = "${var.ssh_key_path}.pub"
}
