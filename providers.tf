
provider "proxmox" {
  pm_api_url          = var.proxmox_config.endpoint
  pm_api_token_id     = var.proxmox_config.secret_id
  pm_api_token_secret = var.proxmox_config.secret_key
  pm_tls_insecure     = true
}