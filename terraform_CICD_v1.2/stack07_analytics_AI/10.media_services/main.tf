

module "media_workflow_module" {
  source                = "./media_workflow_module"

    tenancy_ocid     = var.tenancy_ocid
    region           = var.region
    compartment_ocid = local.compartment_ocid
    project_tag      = var.project_tag
    ms_display_name  = var.ms_display_name
    
    media_workflow_tasks_key                = var.media_workflow_tasks_key
    media_workflow_tasks_parameters         = var.media_workflow_tasks_parameters
    media_workflow_tasks_type               = var.media_workflow_tasks_type
    media_workflow_tasks_version            = var.media_workflow_tasks_version
}

module "media_workflow_config_module" {
  source                = "./media_workflow_config_module"
   
  display_name                              = var.display_name
  media_workflow_configuration_parameters   = var.media_workflow_configuration_parameters
  compartment_ocid = local.compartment_ocid
  project_tag      = var.project_tag

  }
