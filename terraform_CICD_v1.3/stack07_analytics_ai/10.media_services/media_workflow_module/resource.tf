resource "oci_media_services_media_workflow" "test_media_workflow" {
  compartment_id = var.compartment_ocid
  display_name   = var.ms_display_name
  defined_tags   = var.project_tag.definedTags
  freeform_tags  = var.project_tag.freeformTags

   tasks {
    key           = var.media_workflow_tasks_key
    parameters    = var.media_workflow_tasks_parameters
    type          = var.media_workflow_tasks_type
    version       = var.media_workflow_tasks_version

    
  }
}

