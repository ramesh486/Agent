resource "oci_database_migration_migration" "test_migration" {

    compartment_id = var.compartment_ocid
    source_database_connection_id = var.source_database_connection_ocid
    target_database_connection_id = var.target_database_connection_ocid
    type = var.migration_type

    data_transfer_medium_details {

       database_link_details {

            wallet_bucket {
            
                bucket = var.migration_data_transfer_medium_details_database_link_details_wallet_bucket_bucket
                namespace = var.migration_data_transfer_medium_details_database_link_details_wallet_bucket_namespace
            }
        }
        object_storage_details {
            
            bucket = var.migration_data_transfer_medium_details_object_storage_details_bucket
            namespace = var.migration_data_transfer_medium_details_object_storage_details_namespace
        }
    }
    datapump_settings {

        export_directory_object {

            name = var.migration_datapump_settings_export_directory_object_name
        }

        import_directory_object {
           
            name = var.migration_datapump_settings_import_directory_object_name
        }
      
        metadata_remaps {
        
            new_value = var.migration_datapump_settings_metadata_remaps_new_value
            old_value = var.migration_datapump_settings_metadata_remaps_old_value
            type = var.migration_datapump_settings_metadata_remaps_type
        }
    }
   
    dump_transfer_details {

        source {
            
            kind = var.migration_dump_transfer_details_source_kind
        }
        target {
            
            kind = var.migration_dump_transfer_details_target_kind

        }
    }
    exclude_objects {

         object = var.migration_exclude_objects_object
         owner = var.migration_exclude_objects_owner

    }
  
    golden_gate_details {
        
        hub {
            
            rest_admin_credentials {
                
                password = var.migration_golden_gate_details_hub_rest_admin_credentials_password
                username = var.migration_golden_gate_details_hub_rest_admin_credentials_username
            }
            source_db_admin_credentials {
                
                password = var.migration_golden_gate_details_hub_source_db_admin_credentials_password
                username = var.migration_golden_gate_details_hub_source_db_admin_credentials_username
            }

            source_microservices_deployment_name = var.source_microservices_deployment_name
            target_db_admin_credentials {
                
                password = var.migration_golden_gate_details_hub_target_db_admin_credentials_password
                username = var.migration_golden_gate_details_hub_target_db_admin_credentials_username
            }
            target_microservices_deployment_name = var.target_microservices_deployment_name
            url = var.migration_golden_gate_details_hub_url

            source_container_db_admin_credentials {
                
                password = var.migration_golden_gate_details_hub_source_container_db_admin_credentials_password
                username = var.migration_golden_gate_details_hub_source_container_db_admin_credentials_username
            }
        }

    }

    include_objects {
        
       object = var.migration_include_objects_object
       owner = var.migration_include_objects_owner

    }
   
    vault_details {
        
        compartment_id = var.compartment_ocid
        key_id = var.test_key_ocid
        vault_id = var.test_vault_ocid
    }

    defined_tags            = var.project_tag.definedTags
    freeform_tags           = var.project_tag.freeformTags
}
