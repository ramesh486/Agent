module "External_NonContainerDB" {
  source                                    = "./external_noncontainerdb_module"  
  tenancy_ocid                              = var.tenancy_ocid
  region                                    = var.region
  compartment_ocid                          = local.compartment_ocid
  project_tag                               = var.project_tag
  external_non_container_database_display_name  = var.external_non_container_database_display_name
  
  
}

module "external_dbconnector" {
  source                                    = "./external_dbconnector_module"  
  connector_credential_type                 = var.connector_credential_type
  connector_credential_name                 = var.connector_credential_name           
  project_tag                               = var.project_tag
  connection_string_hostname                = var.connection_string_hostname
  connection_string_port                    = var.connection_string_port
  connection_string_protocol                = var.connection_string_protocol
  connection_string_service                 = var.connection_string_service
  connector_agent_id                        = var.connector_agent_id
  external_database_connector_display_name  = var.external_database_connector_display_name
  connector_type                            = var.connector_type
  external_database_ocid                    = var.external_database_ocid
}


module "external_noncontainerdb_mngmnt" {
  source                                    = "./external_noncontainerdb_mngmnt_module"  
  db_management_license_model               = var.db_management_license_model
  enable_management                         = var.enable_management
  external_database_connector_ocid          = module.external_dbconnector.external_database_connector_ocid
  external_non_container_database_ocid      = module.External_NonContainerDB.external_non_container_database_ocid
  
}