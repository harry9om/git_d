resource "azurerm_user_assigned_identity" "ua1" {
  resource_group_name = var.rg_name
  location            = var.location
  name                = var.ua_identity_name
}

resource "azurerm_role_assignment" "role_assignment" {
  role_definition_name = "AcrPull"
  scope                = var.acr_id
  principal_id         = azurerm_user_assigned_identity.ua1.principal_id
}

resource "azurerm_key_vault_access_policy" "access_policy" {
  tenant_id          = var.tenant_id
  object_id          = azurerm_user_assigned_identity.ua1.principal_id
  key_vault_id       = var.key_vault_id
  secret_permissions = ["Get","List"]

  depends_on = [azurerm_role_assignment.role_assignment]
}

resource "azurerm_kubernetes_cluster" "k8_cluster" {
  name                = var.aks_cluster_name
  resource_group_name = var.rg_name
  location            = var.location
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.system_node_pool_name
    node_count = var.system_node_pool_node_count
    vm_size    = var.system_node_pool_vm_size
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.ua1.id]
  }

  key_vault_secrets_provider {
    secret_rotation_enabled = true
  }

  depends_on = [azurerm_user_assigned_identity.ua1,
    azurerm_role_assignment.role_assignment,
  azurerm_key_vault_access_policy.access_policy]
}