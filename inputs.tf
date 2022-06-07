variable "proxmox_config" {
  type = object({
    endpoint   = string
    secret_id  = string
    secret_key = string
  })
}

#variable "pm_api_token_id" {
#  description = "proxmox token"
#  type = string
#}
#variable "pm_api_token_secret" {
#  description = "proxmox token secret"
#  type = string
#}
#variable "pm_api_url" {
#  description = "proxmox api url"
#  type = string
#}