terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
    }
  }
}

provider "vultr" {
  api_key = var.vultr_api_key
}

resource "vultr_server" "irc_telegram_bridge" {
  plan_id         = var.vultr_server_irc_telegram_bridge_plan_id
  region_id       = var.vultr_server_irc_telegram_bridge_region_id
  iso_id          = var.vultr_server_irc_telegram_bridge_iso_id
  label           = var.vultr_server_irc_telegram_bridge_label
  tag             = var.vultr_server_irc_telegram_bridge_tag
  hostname        = var.vultr_server_irc_telegram_bridge_hostname
  user_data       = var.vultr_server_irc_telegram_bridge_user_data
  enable_ipv6     = var.vultr_server_irc_telegram_bridge_enable_ipv6
  auto_backup     = var.vultr_server_irc_telegram_bridge_auto_backup
  ddos_protection = var.vultr_server_irc_telegram_bridge_ddos_protection
  notify_activate = var.vultr_server_irc_telegram_bridge_notify_activate
}
