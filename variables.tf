variable "vultr_api_key" {
  type        = string
  description = "The API Key to authenticate with Vultr's API."
}

variable "vultr_server_irc_telegram_bridge_plan_id" {
  type = string
}

variable "vultr_server_irc_telegram_bridge_region_id" {
  type = string
}

variable "vultr_server_irc_telegram_bridge_iso_id" {
  type = number
}

variable "vultr_server_irc_telegram_bridge_label" {
  type = string
}

variable "vultr_server_irc_telegram_bridge_tag" {
  type = string
}

variable "vultr_server_irc_telegram_bridge_hostname" {
  type = string
}

variable "vultr_server_irc_telegram_bridge_user_data" {
  type = string
}

variable "vultr_server_irc_telegram_bridge_enable_ipv6" {
  type = bool
}

variable "vultr_server_irc_telegram_bridge_auto_backup" {
  type = bool
}

variable "vultr_server_irc_telegram_bridge_ddos_protection" {
  type = bool
}

variable "vultr_server_irc_telegram_bridge_notify_activate" {
  type = bool
}
