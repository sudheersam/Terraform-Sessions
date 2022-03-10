# Azure Mysql Database Server
resource "azurerm_mysql_server" "mysqlserver" {
    name = "${var.business_unit}-${var.Environment}-${var.db_name}"
    location = azurerm_resource_group.myrg.location
    resource_group_name = azurerm_resource_group.myrg.name

    administrator_login = var.db_username
    administrator_login_password = var.db_password

    sku_name = "B_Gen5_2"
    storage_mb = var.db_storage_mb
    version = "8.0"

    auto_grow_enabled = var.db_auto_grow_enabled
    backup_retention_days = 7
    geo_redundant_backup_enabled = false
    infrastructure_encryption_enabled = false
    public_network_access_enabled = true
    ssl_enforcement_enabled = false
    tags = var.common_tags
    
    
}


# Create Database inside Azure MySQL database server

resource "azurerm_mysql_database" "webappdb3" {
    name = "webappdb3"
    resource_group_name = azurerm_resource_group.myrg.name
    server_name = azurerm_mysql_server.mysqlserver.name
    charset = "utf8"
    collation = "utf8_unicode_ci"
  
}