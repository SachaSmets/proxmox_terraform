terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.10"
    }
  }
}

provider "proxmox" {
  pm_api_url=""
  pm_api_token_id=""
  pm_api_token_secret=""
}