resource "oci_cloud_migrations_migration" "this" {
  compartment_id = var.compartment_ocid
  display_name   = var.migration_display_name
  }
