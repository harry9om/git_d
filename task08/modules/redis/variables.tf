variable "redis_cache_name" {
  type = string
}
variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}
variable "sku_name" {
  type = string
}
variable "family" {
  type = string
}
variable "capacity" {
  type = number
}

variable "key_vault_secret_redis_primary_key_name" {
  type = string
}

variable "key_vault_secret_redis_hostname_name" {
  type = string
}

variable "key_vault_id" {
  type = string
}