resource "azurerm_storage_account" "storage_account" {
    for_each = var.storage_account  
    name = each.value.name
    resource_group_name = each.value.groupname
    location = each.value.loc
    account_tier = each.value.tier
    account_replication_type = each.value.replica
}