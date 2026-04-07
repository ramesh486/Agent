resource "oci_file_storage_file_system" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  display_name        = var.file_system_display_name
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
}



