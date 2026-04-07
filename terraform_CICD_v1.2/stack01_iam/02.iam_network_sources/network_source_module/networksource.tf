resource "oci_identity_network_source" "test_network_source" {
  #Required
  
  compartment_id  = var.compartment_ocid 
  description     = var.network_source_description
  name            = var.network_source_name
  defined_tags    = var.project_tag.definedTags
  freeform_tags   = var.project_tag.freeformTags

}