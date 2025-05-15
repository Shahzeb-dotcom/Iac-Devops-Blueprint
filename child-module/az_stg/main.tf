resource "azurerm_storage_account" "stg"{
for_each = var.stg
name = each.value.stgname
location = each.value.stglocation
account_tier = "Standard"
account_replication_type = "LRS"
account_kind = "StorageV2"

}