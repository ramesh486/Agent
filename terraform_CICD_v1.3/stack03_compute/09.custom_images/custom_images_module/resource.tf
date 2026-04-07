resource "oci_core_image" "custom_image" {
  compartment_id        = var.compartment_ocid
  instance_id           = var.instance_ocid
  defined_tags          = var.project_tag.definedTags
  freeform_tags         = var.project_tag.freeformTags

  launch_mode           = var.launch_mode 
  timeouts {
    create = var.image_timeout_create 
  }
}