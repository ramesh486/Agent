

module "media_services" {
  source                = "./media_services_module"

    tenancy_ocid     = var.tenancy_ocid
    region           = var.region
    compartment_ocid = var.compartment_ocid
    ms_display_name   = var.ms_display_name
    
    media_workflow_tasks_key                = var.media_workflow_tasks_key
    media_workflow_tasks_parameters         = var.media_workflow_tasks_parameters
    media_workflow_tasks_type               = var.media_workflow_tasks_type
    media_workflow_tasks_version            = var.media_workflow_tasks_version
    
   
  display_name                              = var.display_name
  media_workflow_configuration_parameters   = var.media_workflow_configuration_parameters

  }
