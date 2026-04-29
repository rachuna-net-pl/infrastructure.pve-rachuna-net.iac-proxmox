resource "proxmox_virtual_environment_download_file" "ubuntu24-04" {
  content_type       = "vztmpl"
  datastore_id       = local.storage_name
  node_name          = local.default_node
  file_name          = "ubuntu-24.04.tar.zst"
  url                = "http://download.proxmox.com/images/system/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
  checksum           = "4030982618eeae70854e8f9711adbd09"
  checksum_algorithm = "md5"
}

resource "proxmox_virtual_environment_download_file" "ubuntu24-04-pve-s1" {
  content_type       = "vztmpl"
  datastore_id       = "storage"
  node_name          = "pve-s1"
  file_name          = "ubuntu-24.04.tar.zst"
  url                = "http://download.proxmox.com/images/system/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
  checksum           = "4030982618eeae70854e8f9711adbd09"
  checksum_algorithm = "md5"
}

resource "proxmox_virtual_environment_download_file" "ubuntu24-04-pve-s3" {
  content_type       = "vztmpl"
  datastore_id       = "storage"
  node_name          = "pve-s3"
  file_name          = "ubuntu-24.04.tar.zst"
  url                = "http://download.proxmox.com/images/system/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
  checksum           = "4030982618eeae70854e8f9711adbd09"
  checksum_algorithm = "md5"
}

resource "proxmox_virtual_environment_download_file" "ubuntu24-04-pve-s4" {
  content_type       = "vztmpl"
  datastore_id       = "storage"
  node_name          = "pve-s4"
  file_name          = "ubuntu-24.04.tar.zst"
  url                = "http://download.proxmox.com/images/system/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
  checksum           = "4030982618eeae70854e8f9711adbd09"
  checksum_algorithm = "md5"
}