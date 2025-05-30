variable "tenant_id" {
  type = string
}
variable "subscription_id" {
  type = string
}
variable "client_id" {
  type = string
}
variable "client_secret_file_path" {
  type = string
}

variable "rg_name" {
  type        = string
  description = "rg name"
}

variable "location" {
  type        = string
  description = "location"
}

#acr
variable "acr_name" {
  type        = string
  description = "acr name"
}
variable "acr_sku" {
  type        = string
  description = "sku"
}
variable "dockerfile_path" {
  type = string
}
variable "docker_build_context_path" {
  type = string
}
variable "docker_image_name" {
  type = string
}
variable "context_access_token" {
  type = string
}
variable "platform_os" {
  type = string
}
variable "acr_task_name" {
  type = string
}

#aci
variable "aci_container_environment_variables" {
  type = map(string)
}

variable "aci_container_name" {
  type = string
}

variable "aci_container_cpu" {
  type = string
}

variable "aci_container_memory" {
  type = string
}

variable "aci_os_type" {
  type = string
}

variable "aci_container_group_name" {
  type = string
}

#kv
variable "kv_name" {
  type = string
}
variable "kv_sku_name" {
  type = string
}
#redis
variable "redis_cache_name" {
  type = string
}
variable "redis_primary_key_secret_name" {
  type = string
}

variable "redis_hostname_secret_name" {
  type = string
}

variable "redis_sku_name" {
  type = string
}
variable "redis_family" {
  type = string
}
variable "redis_capacity" {
  type = number
}

#aks
variable "aks_dns_prefix" {
  type = string
}
variable "aks_cluster_name" {
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
variable "user_assigned_identity_name" {
  type = string
}