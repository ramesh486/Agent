resource "oci_media_services_media_workflow_configuration" "test_media_workflow_configuration" {
  
  compartment_id = var.compartment_ocid
  display_name   = var.display_name
  parameters     = var.media_workflow_configuration_parameters
  defined_tags   = var.project_tag.definedTags
  freeform_tags  = var.project_tag.freeformTags
  

  }