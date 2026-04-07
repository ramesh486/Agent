     
module "database" {
  source                                            = "./autonomous_db_module"   
  compartment_ocid                                  = var.compartment_ocid
  tenancy_ocid                                      = var.tenancy_ocid
  region                                            = var.region
  project_tag                                       = var.project_tag           
  database_db_name                                  = var.database_db_name
  database_display_name                             = var.database_display_name
  database_db_workload                              = var.database_db_workload
  database_db_version                               = var.database_db_version
  database_cpu_core_count                           = var.database_cpu_core_count
  autonomous_database_is_dedicated                  = var.autonomous_database_is_dedicated
  autonomous_container_database_ocid                = var.autonomous_container_database_ocid
  autonomous_database_is_auto_scaling_enabled       = var.autonomous_database_is_auto_scaling_enabled
  database_data_storage_size_in_tbs                 = var.database_data_storage_size_in_tbs
  autonomous_database_is_auto_scaling_for_storage_enabled = var.autonomous_database_is_auto_scaling_for_storage_enabled
  autonomous_database_is_mtls_connection_required   = var.autonomous_database_is_mtls_connection_required  
  database_admin_password                           = var.database_admin_password
  database_license_model                            = var.database_license_model
  database_operations_insights_status               = var.database_operations_insights_status
  database_permission_level                         = var.database_permission_level
  autonomous_database_customer_contacts_email       = var.autonomous_database_customer_contacts_email
  nsg_ocid                                          = var.nsg_ocid
  subnet_ocid                                       = var.subnet_ocid
  create_private_database                           = var.create_private_database
  autonomous_database_source                        = var.autonomous_database_source
}