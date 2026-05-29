resource "azurerm_virtual_network" "virtual_network" {
for_each = var.virtual_network
name = each.value.name
location = each.value.loc
resource_group_name = each.value.groupname
address_space = each.value.address
}