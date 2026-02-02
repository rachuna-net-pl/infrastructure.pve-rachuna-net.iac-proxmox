data "vault_kv_secret_v2" "auth_techuser" {
  mount = "kv-gitlab"
  name  = "pl.rachuna-net/auth/techuser"
}