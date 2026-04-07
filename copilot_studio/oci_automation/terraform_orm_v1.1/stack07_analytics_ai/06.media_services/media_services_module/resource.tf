resource "oci_media_services_media_workflow" "test_media_workflow" {
  #Required
  compartment_id = var.compartment_ocid
  display_name   = var.ms_display_name

   tasks {
    #Required
    key           = var.media_workflow_tasks_key
    parameters    = var.media_workflow_tasks_parameters
    type          = var.media_workflow_tasks_type
    version       = var.media_workflow_tasks_version

    
  }
}

resource "oci_media_services_media_workflow_configuration" "test_media_workflow_configuration" {
  
  compartment_id = var.compartment_ocid
  display_name   = var.display_name
  parameters     = var.media_workflow_configuration_parameters

  }
