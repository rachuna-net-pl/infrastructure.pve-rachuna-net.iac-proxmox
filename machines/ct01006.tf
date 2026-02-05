module "ct01006" {
  source = "git@gitlab.com:pl.rachuna-net/artifacts/opentofu/proxmox-container.git?ref=v1.0.2"

  hostname      = "ct01006.rachuna-net.pl"
  description   = "vault s4"
  node_name     = "pve-s4"
  ct_id         = 1006
  pool_id       = "vault-consul"
  protection    = true
  start_on_boot = true
  tags          = ["vault", "ubuntu"]
  unprivileged  = false
  is_dmz        = false
  mac_address   = "BC:24:11:ED:B6:A2"

  cpu_cores = 1
  memory = {
    dedicated = 512
    swap      = 0
  }
  disk = {
    storage_name = "storage"
    disk_size    = 16
  }

  operating_system = {
    template_file = join("/", [local.ct_storage_name, "ubuntu-24.04.tar.zst"])
    type          = "ubuntu"
  }

  features = {
    keyctl  = true
    nesting = true
  }

  user_account = {
    username       = data.vault_kv_secret_v2.auth_techuser.data["username"]
    password       = data.vault_kv_secret_v2.auth_techuser.data["password"]
    public_ssh_key = data.vault_kv_secret_v2.auth_techuser.data["public_ssh_key"]
  }
}

resource "vault_kv_secret_v2" "ct01006_credentials" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/infrastructure/opentofu/iac-proxmox/machine/ct01006"

  data_json = jsonencode({
    root_password    = module.ct01006.root_password
    root_private_key = module.ct01006.root_private_key
    root_public_key  = module.ct01006.root_public_key
    container_ipv4   = module.ct01006.container_ipv4
  })
}
