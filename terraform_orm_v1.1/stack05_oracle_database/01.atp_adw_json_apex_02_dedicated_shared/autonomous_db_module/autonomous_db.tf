resource oci_database_autonomous_database this {
  admin_password                        = var.database_admin_password
  autonomous_container_database_id      = var.autonomous_container_database_ocid
  compartment_id                        = var.compartment_ocid
  cpu_core_count                        = var.database_cpu_core_count
  customer_contacts {
    email = var.autonomous_database_customer_contacts_email
  }
  defined_tags                          = var.project_tag.definedTags
  freeform_tags                         = var.project_tag.freeformTags
  is_dedicated                          = var.autonomous_database_is_dedicated
  is_auto_scaling_enabled               = var.autonomous_database_is_auto_scaling_enabled
  is_mtls_connection_required           = var.autonomous_database_is_mtls_connection_required
  data_storage_size_in_tbs              = var.database_data_storage_size_in_tbs
  is_auto_scaling_for_storage_enabled   = var.autonomous_database_is_auto_scaling_for_storage_enabled
  db_name                               = var.database_db_name
  db_version                            = var.database_db_version
  db_workload                           = var.database_db_workload
  display_name                          = var.database_display_name
  license_model                         = var.database_license_model
  nsg_ids                               = var.create_private_database == "true" ? var.nsg_ocid : []
  operations_insights_status            = var.database_operations_insights_status
  permission_level                      = var.database_permission_level 
  subnet_id                             = var.create_private_database == "true" ? var.subnet_ocid : ""
  source                                = var.autonomous_database_source
}
