module "deploy_env_module" {
  source                          = "./deploy_env_module" 
  tenancy_ocid                    = var.tenancy_ocid
  region                          = var.region
  compartment_ocid                = var.compartment_ocid
  notification_topic              = var.notification_topic
  project_name                    = var.project_name
  deploy_environment_type         = var.deploy_environment_type
  function_id                     = var.function_id
  deploy_environment_display_name = var.deploy_environment_display_name
}
