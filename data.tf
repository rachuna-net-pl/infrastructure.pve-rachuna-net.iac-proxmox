data "vault_kv_secret_v2" "proxmox_auth" {
  mount = "pl.rachuna-net"
  name  = "auth/pve.rachuna-net.pl"
}