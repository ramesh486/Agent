##### Database Migration ######

module test_migration  {
source                                                                               = "./Db_migration_module"
source_database_connection_ocid                                                      = var.source_database_connection_ocid
target_database_connection_ocid                                                      = var.target_database_connection_ocid
migration_type                                                                       = var.migration_type
migration_data_transfer_medium_details_database_link_details_wallet_bucket_bucket    = var.migration_data_transfer_medium_details_database_link_details_wallet_bucket_bucket
migration_data_transfer_medium_details_database_link_details_wallet_bucket_namespace = var.migration_data_transfer_medium_details_database_link_details_wallet_bucket_namespace
migration_data_transfer_medium_details_object_storage_details_bucket                 = var.migration_data_transfer_medium_details_object_storage_details_bucket
migration_data_transfer_medium_details_object_storage_details_namespace              = var.migration_data_transfer_medium_details_object_storage_details_namespace
migration_datapump_settings_export_directory_object_name                             = var.migration_datapump_settings_export_directory_object_name
migration_datapump_settings_import_directory_object_name                             = var.migration_datapump_settings_import_directory_object_name
migration_datapump_settings_metadata_remaps_new_value                                = var.migration_datapump_settings_metadata_remaps_new_value
migration_datapump_settings_metadata_remaps_old_value                                = var.migration_datapump_settings_metadata_remaps_old_value
migration_datapump_settings_metadata_remaps_type                                     = var.migration_datapump_settings_metadata_remaps_type
migration_dump_transfer_details_source_kind                                          = var.migration_dump_transfer_details_source_kind
migration_dump_transfer_details_target_kind                                          = var.migration_dump_transfer_details_target_kind
migration_exclude_objects_object                                                     = var.migration_exclude_objects_object
migration_exclude_objects_owner                                                      = var.migration_exclude_objects_owner
migration_golden_gate_details_hub_rest_admin_credentials_password                    = var.migration_golden_gate_details_hub_rest_admin_credentials_password
migration_golden_gate_details_hub_rest_admin_credentials_username                    = var.migration_golden_gate_details_hub_rest_admin_credentials_username
migration_golden_gate_details_hub_source_db_admin_credentials_password               = var.migration_golden_gate_details_hub_source_db_admin_credentials_password
migration_golden_gate_details_hub_source_db_admin_credentials_username               = var.migration_golden_gate_details_hub_source_db_admin_credentials_username
source_microservices_deployment_name                                                 = var.source_microservices_deployment_name
migration_golden_gate_details_hub_target_db_admin_credentials_password               = var.migration_golden_gate_details_hub_target_db_admin_credentials_password
migration_golden_gate_details_hub_target_db_admin_credentials_username               = var.migration_golden_gate_details_hub_target_db_admin_credentials_username
target_microservices_deployment_name                                                 = var.target_microservices_deployment_name
migration_golden_gate_details_hub_url                                                = var.migration_golden_gate_details_hub_url
migration_golden_gate_details_hub_source_container_db_admin_credentials_password     = var.migration_golden_gate_details_hub_source_container_db_admin_credentials_password
migration_golden_gate_details_hub_source_container_db_admin_credentials_username     = var.migration_golden_gate_details_hub_source_container_db_admin_credentials_username
migration_include_objects_object                                                     = var.migration_include_objects_object
migration_include_objects_owner                                                      = var.migration_include_objects_owner
compartment_ocid                                                                     = var.compartment_ocid
test_key_ocid                                                                        = var.test_key_ocid
test_vault_ocid                                                                      = var.test_vault_ocid
project_tag                                                                          = var.project_tag
}
