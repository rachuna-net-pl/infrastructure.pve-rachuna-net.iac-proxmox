terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.94.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 5.6.0"
    }
  }
  required_version = ">= 1.10.4"
  backend "http" {}
}

provider "proxmox" {
  endpoint = data.vault_kv_secret_v2.proxmox_auth.data["ENDPOINT"]
  # api_token = data.vault_kv_secret_v2.proxmox_auth.data["API_TOKEN"]
  username = "root@pam"
  password = "Maciej013!"
  insecure = true
}

provider "vault" {
  address         = "https://vault-1022.rachuna-net.pl:8200"
  skip_tls_verify = true
}