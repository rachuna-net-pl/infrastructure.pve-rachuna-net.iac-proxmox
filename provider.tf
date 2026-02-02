terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.87.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.25.0"
    }
  }
  required_version = ">= 1.10.4"
  backend "http" {}
}

provider "proxmox" {
  endpoint  = data.vault_kv_secret_v2.proxmox_auth.data["ENDPOINT"]
  api_token = data.vault_kv_secret_v2.proxmox_auth.data["API_TOKEN"]
  insecure  = true
}