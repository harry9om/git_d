rg_name  = "om-rg1"
location = "southindia"

acr_name                  = "omacr1"
acr_task_name             = "m-acr1-task1"
acr_sku                   = "Basic"
platform_os               = "Linux"
dockerfile_path           = "Dockerfile"
docker_build_context_path = "https://github.com/harry9om/git_d/task08a#main:application"
docker_image_name         = "om-image1"


aci_container_group_name = "om-aci1"
aci_os_type              = "Linux"
aci_container_name       = "om-aci-container1"
aci_container_cpu        = "1"
aci_container_memory     = "1"
aci_container_environment_variables = {
  "CREATOR"        = "ACI",
  "REDIS_PORT"     = "6380",
  "REDIS_SSL_MODE" = "True",
}

kv_name     = "om-kv1"
kv_sku_name = "standard"

redis_cache_name = "om-rediscache1"
redis_family     = "C"
redis_capacity   = 0
redis_sku_name   = "Basic"

redis_hostname_secret_name    = "redis-hostname"
redis_primary_key_secret_name = "redis-primary-key"

aks_cluster_name            = "om-acr1"
aks_dns_prefix              = "om-acr1"
system_node_pool_name       = "systempool46"
system_node_pool_node_count = 1
system_node_pool_vm_size    = "standard_a2_v2"
user_assigned_identity_name = "om-uai1"