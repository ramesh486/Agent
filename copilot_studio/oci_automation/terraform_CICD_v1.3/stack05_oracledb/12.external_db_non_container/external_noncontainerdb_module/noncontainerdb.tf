resource "oci_database_external_non_container_database" "this" {
  compartment_id      = var.compartment_ocid
  display_name        = var.external_non_container_database_display_name
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
}


