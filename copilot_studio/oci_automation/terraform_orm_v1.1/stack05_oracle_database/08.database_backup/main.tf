module "database_backup" {
    source              = "./database_backup_module"
    database_ocid       = var.database_ocid
    backup_display_name = var.backup_display_name
}