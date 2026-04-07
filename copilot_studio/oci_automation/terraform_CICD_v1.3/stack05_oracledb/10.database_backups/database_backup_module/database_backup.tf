
resource "oci_database_backup" "test_backup" {
    database_id = var.database_ocid
    display_name = var.backup_display_name
}