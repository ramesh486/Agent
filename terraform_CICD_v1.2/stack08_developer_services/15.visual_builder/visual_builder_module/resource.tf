resource "oci_visual_builder_vb_instance" "test_vb_instance" {
  compartment_id            = var.compartment_ocid
  display_name              = var.display_name
  is_visual_builder_enabled = var.is_visual_builder_enabled
  idcs_open_id              = var.idcs_open_id
  node_count                = var.node_count 
  custom_endpoint {
    hostname = var.custom_endpoint_host_name
  }
  defined_tags              = var.project_tag.definedTags
  freeform_tags             = var.project_tag.freeformTags 
}
