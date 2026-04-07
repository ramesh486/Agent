##########################
# Spoke VCN Log Group 
##########################

module "log_group_spoke_vcn" {
  source                    = "./loggroup_module"
  compartment_ocid          = local.monitoring_compartment_ocid
  project_tag               = var.project_tag
  log_group_display_name    = var.spoke_log_group_display_name
  log_group_description     = var.spoke_log_group_description
}

######################################
# VCN Flow Logs for appdev_subnet
######################################

module "log_spoke_vcn_appdev_subnet" {
  source                                    = "./logging_module"
  compartment_ocid                          = local.network_compartment_ocid
  project_tag                               = var.project_tag
  logging_display_name                      = var.appdev_subnet_private_logging_display_name
  is_logging_enabled                        = var.appdev_subnet_private_is_logging_enabled
  log_group_ocid                            = module.log_group_spoke_vcn.loggroup_ocid
  log_type                                  = var.appdev_subnet_private_log_type
  log_retention_duration                    = var.appdev_subnet_private_log_retention_duration
  logging_configuration_source_category     = var.appdev_subnet_private_logging_configuration_source_category
  logging_configuration_source_subnet_ocid  = local.appdev_subnet_ocid
  logging_configuration_source_service      = var.appdev_subnet_private_logging_configuration_source_service
  logging_configuration_source_type         = var.appdev_subnet_private_logging_configuration_source_type
}

########################################
# VCN Flow Logs for dbdev_subnet
########################################

module "log_spoke_vcn_dbdev_subnet" {
  source                                    = "./logging_module"
  compartment_ocid                          = local.network_compartment_ocid
  project_tag                               = var.project_tag
  logging_display_name                      = var.dbdev_subnet_private_logging_display_name
  is_logging_enabled                        = var.dbdev_subnet_private_is_logging_enabled
  log_group_ocid                            = module.log_group_spoke_vcn.loggroup_ocid
  log_type                                  = var.dbdev_subnet_private_log_type
  log_retention_duration                    = var.dbdev_subnet_private_log_retention_duration
  logging_configuration_source_category     = var.dbdev_subnet_private_logging_configuration_source_category
  logging_configuration_source_subnet_ocid  = local.dbdev_subnet_ocid
  logging_configuration_source_service      = var.dbdev_subnet_private_logging_configuration_source_service
  logging_configuration_source_type         = var.dbdev_subnet_private_logging_configuration_source_type
}

########################################
# VCN Flow Logs for apptst_subnet
########################################

module "log_spoke_vcn_apptst_subnet" {
  source                                    = "./logging_module"
  compartment_ocid                          = local.network_compartment_ocid
  project_tag                               = var.project_tag
  logging_display_name                      = var.apptst_subnet_private_logging_display_name
  is_logging_enabled                        = var.apptst_subnet_private_is_logging_enabled
  log_group_ocid                            = module.log_group_spoke_vcn.loggroup_ocid
  log_type                                  = var.apptst_subnet_private_log_type
  log_retention_duration                    = var.apptst_subnet_private_log_retention_duration
  logging_configuration_source_category     = var.apptst_subnet_private_logging_configuration_source_category
  logging_configuration_source_subnet_ocid  = local.apptst_subnet_ocid
  logging_configuration_source_service      = var.apptst_subnet_private_logging_configuration_source_service
  logging_configuration_source_type         = var.apptst_subnet_private_logging_configuration_source_type
}

########################################
# VCN Flow Logs for dbtst_subnet
########################################

module "log_spoke_vcn_dbtst_subnet" {
  source                                    = "./logging_module"
  compartment_ocid                          = local.network_compartment_ocid
  project_tag                               = var.project_tag
  logging_display_name                      = var.dbtst_subnet_private_logging_display_name
  is_logging_enabled                        = var.dbtst_subnet_private_is_logging_enabled
  log_group_ocid                            = module.log_group_spoke_vcn.loggroup_ocid
  log_type                                  = var.dbtst_subnet_private_log_type
  log_retention_duration                    = var.dbtst_subnet_private_log_retention_duration
  logging_configuration_source_category     = var.dbtst_subnet_private_logging_configuration_source_category
  logging_configuration_source_subnet_ocid  = local.dbtst_subnet_ocid
  logging_configuration_source_service      = var.dbtst_subnet_private_logging_configuration_source_service
  logging_configuration_source_type         = var.dbtst_subnet_private_logging_configuration_source_type
}
