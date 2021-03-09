source "linode" "community_gateway" {
  ssh_clear_authorized_keys = true

  linode_token      = var.linode_token
  ssh_username      = var.ssh_username
  image             = var.community_gateway_image
  region            = var.community_gateway_region
  instance_type     = var.community_gateway_instance_type
  instance_label    = var.community_gateway_instance_label
  instance_tags     = var.community_gateway_instance_tags
  swap_size         = var.community_gateway_swap_size
  image_label       = var.community_gateway_image_label
  image_description = var.community_gateway_image_description
}

build {
  name = "community_gateway"

  sources = [
    "source.linode.community_gateway"
  ]

  provisioner "shell" {
    inline = [
      "pacman -Syu --noconfirm",
      "pacman -S ansible --noconfirm"
    ]
  }

  provisioner "ansible-local" {
    playbook_dir   = "ansible"
    playbook_files = [
      "ansible/user.yml",
      "ansible/packages.yml",
      "ansible/hardening.yml"
    ]
    galaxy_file = "ansible/requirements.yml"
  }
}
