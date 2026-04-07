resource "oci_file_storage_mount_target" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  display_name        = var.mount_target_display_name
  subnet_id           = var.subnet_ocid
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags  
}