resource "oci_cloud_migrations_migration_asset" "test_migration_asset" {
  availability_domain          = var.migration_asset_availability_domain
  migration_id                 = var.migration_ocid
  inventory_asset_id           = var.inventory_asset_ocid
  replication_compartment_id   = var.replication_compartment_ocid
  snap_shot_bucket_name        = var.snap_shot_bucket_name
  display_name                 = var.migration_asset_display_name
  }

