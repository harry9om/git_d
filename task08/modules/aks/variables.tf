variable "aks_cluster_name" {
  type = string
}
variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "system_node_pool_name" {
  type = string
}

variable "system_node_pool_node_count" {
  type = number
}

variable "system_node_pool_vm_size" {
  type = string
}

variable "acr_id" {
  type = string
}

variable "key_vault_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "ua_identity_name" {
  type = string
}