################################################################################
# vultr_server module variables
################################################################################
variable "irc_bridge_plan_id" {
  type = string
}

variable "irc_bridge_region_id" {
  type = string
}

variable "irc_bridge_iso_id" {
  type = number
}

variable "irc_bridge_label" {
  type = string
}

variable "irc_bridge_tag" {
  type = string
}

variable "irc_bridge_hostname" {
  type = string
}

variable "irc_bridge_user_data" {
  type = string
}

variable "irc_bridge_enable_ipv6" {
  type = bool
}

variable "irc_bridge_auto_backup" {
  type = bool
}

variable "irc_bridge_ddos_protection" {
  type = bool
}

variable "irc_bridge_notify_activate" {
  type = bool
}

variable "irc_bridge_firewall_group_id" {
  type = string
}
