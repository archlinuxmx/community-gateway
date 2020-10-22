source "vultr" "irc_bridge" {
  api_key              = var.vultr_api_key
  os_id                = var.vultr_server_irc_bridge_os_id
  plan_id              = var.vultr_server_irc_bridge_plan_id
  region_id            = var.vultr_server_irc_bridge_region_id
  snapshot_description = "Packer-test-with updates"
  ssh_username         = "root"
  state_timeout = "15m"
}

build {
  sources = [
    "source.vultr.irc_bridge"
  ]

  provisioner "file"{
    source = "variables/ansible.json"
    destination = "/tmp/variables.json"
  }

  provisioner "file"{
    source = "ansible/totp.yml"
    destination = "/tmp/totp.yml"
  }

  provisioner "shell" {
    inline = [
      "sudo dnf install epel-release -y",
      "sudo dnf makecache",
      "sudo dnf install ansible -y"
    ]
  }

  provisioner "ansible-local" {
    playbook_file = "ansible/user.yml"
  }
}
