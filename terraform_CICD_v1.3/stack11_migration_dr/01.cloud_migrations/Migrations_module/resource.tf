resource "oci_cloud_migrations_migration" "this" {
  compartment_id = var.compartment_ocid
  display_name   = var.migration_display_name
  defined_tags                 = var.project_tag.definedTags
  freeform_tags                = var.project_tag.freeformTags
  }
