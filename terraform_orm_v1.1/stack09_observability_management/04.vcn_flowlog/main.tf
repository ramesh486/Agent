module "log_group" {
  source                    = "./loggroup_module"
  compartment_ocid          = var.compartment_ocid
  project_tag               = var.project_tag 
  log_group_display_name    = var.log_group_display_name
  log_group_description     = var.log_group_description
}

module "hub_fw_log" {
  source                                    =  "./logging_module"
  compartment_ocid                          = var.compartment_ocid
  tenancy_ocid                              = var.tenancy_ocid
  region                                    = var.region 
  project_tag                               = var.project_tag
  logging_display_name                      = var.hub_fw_log_logging_display_name
  is_logging_enabled                        = var.hub_fw_log_is_logging_enabled
  log_retention_duration                    = var.hub_fw_log_retention_duration
  subnet_ocid                               = var.hub_fw_log_subnet_ocid 
  log_group_ocid                            = module.log_group.loggroup_ocid
  log_type                                  = var.log_type
  logging_configuration_source_category     = var.logging_configuration_source_category
  logging_configuration_source_service      = var.logging_configuration_source_service
  logging_configuration_source_type         = var.logging_configuration_source_type
}



























