data "vault_kv_secret_v2" "proxmox_auth" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/auth/proxmox"
}