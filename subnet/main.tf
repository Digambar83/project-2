resource "azurerm_subnet" "subnet" {
    for_each = {
      subnet = {
        name = "subnet1"
        virtual_network = "vnet"
        groupname = "test"
        prefixes = ["10.0.1.0/24"]
      }
    }
name = each.value.name
virtual_network_name = each.value.virtual_network
resource_group_name = each.value.groupname
address_prefixes = each.value.prefixes
}