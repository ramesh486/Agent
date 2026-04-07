resource "oci_integration_integration_instance" "integration_instance" {
  compartment_id            = var.compartment_ocid
  consumption_model         = var.consumption_model
  display_name              = var.display_name
  idcs_at                   = var.idcs_at
  integration_instance_type = var.integration_instance_type
  is_byol                   = var.is_byol
  is_file_server_enabled    = var.is_file_server_enabled
  is_visual_builder_enabled = var.is_visual_builder_enabled
  message_packs             = var.message_packs
  defined_tags              = var.project_tag.definedTags
  freeform_tags             = var.project_tag.freeformTags
}
