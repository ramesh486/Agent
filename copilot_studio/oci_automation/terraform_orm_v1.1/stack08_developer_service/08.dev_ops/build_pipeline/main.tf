module "build_pipeline_module" {
  source                = "./build_pipeline_module"  
  tenancy_ocid          = var.tenancy_ocid
  region                = var.region
  parameter_name        = var.parameter_name
  default_value         = var.default_value
  description           = var.description
  display_name          = var.display_name
  compartment_ocid      = var.compartment_ocid
  project_name          = var.project_name
  notification_topic    = var.notification_topic
}
