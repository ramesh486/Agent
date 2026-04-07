variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}
variable "source_database_connection_ocid"{
    type        = string
    default     = ""
    description = "The OCID of the source database connection"
}
variable "target_database_connection_ocid"{
    type        = string
    default     = ""
    description = "The OCID of the target database connection"
}
variable "migration_type"{
    type        = string
    default     = "ONLINE"
    description = "The type of migration"
}
variable "migration_data_transfer_medium_details_database_link_details_wallet_bucket_bucket"{
    type        = string
    default     = "Mybucket"
    description = "The bucket name for the wallet in the database link details of the migration data transfer medium"
}
variable "migration_data_transfer_medium_details_database_link_details_wallet_bucket_namespace"{
    type        = string
    default     = ""
    description = "The namespace for the wallet bucket in the database link details of the migration data transfer medium"
}
variable "migration_data_transfer_medium_details_object_storage_details_bucket"{
    type        = string
    default     = "Mybucket"
    description = "The bucket name in the migration data transfer medium's object storage details"
}
variable "migration_data_transfer_medium_details_object_storage_details_namespace"{
    type        = string
    default     = ""
    description = "The namespace in the migration data transfer medium's object storage details"
}
variable "migration_datapump_settings_export_directory_object_name"{
    type        = string
    default     = "test_export_dir"
    description = "The name of the export directory object in the migration datapump settings"
}
variable "migration_datapump_settings_import_directory_object_name"{
    type        = string
    default     = "test_import_dir"
    description = "The name of the import directory object in the migration datapump settings"
}
variable "migration_datapump_settings_metadata_remaps_new_value"{
    type        = string
    default     = "DATA"
    description = "The new value for metadata remapping in the migration datapump settings"
}
variable "migration_datapump_settings_metadata_remaps_old_value"{
    type        = string
    default     = "USERS"
    description = "The old value for metadata remapping in the migration datapump settings"
}
variable "migration_datapump_settings_metadata_remaps_type"{
    type        = string
    default     = "TABLESPACE"
    description = "The type of metadata remapping in the migration datapump settings"
}
variable "migration_dump_transfer_details_source_kind"{
    type        = string
    default     = "CURL"
    description = "The kind of transfer for the source dump in the migration dump transfer details"
}
variable "migration_dump_transfer_details_target_kind"{
    type        = string
    default     = "CURL"
    description = "The kind of transfer for the target dump in the migration dump transfer details"
}
variable "migration_exclude_objects_object"{
    type        = string
    default     = "Myobject1"
    description = "The name of an object to be excluded from the migration"
}
variable "migration_exclude_objects_owner"{
    type        = string
    default     = "Myowner1"
    description = "The owner of the object to be excluded from the migration"
}
variable "migration_golden_gate_details_hub_rest_admin_credentials_password"{
    type        = string
    default     = ""
    description = "The password for the GoldenGate Hub REST admin credentials"
}
variable "migration_golden_gate_details_hub_rest_admin_credentials_username"{
    type        = string
    default     = ""
    description = "The username for the GoldenGate Hub REST admin credentials"
}
variable "migration_golden_gate_details_hub_source_db_admin_credentials_password"{
    type        = string
    default     = ""
    description = "The password for the GoldenGate Hub source database admin credentials"
}
variable "migration_golden_gate_details_hub_source_db_admin_credentials_username"{
    type        = string
    default     = ""
    description = "The username for the GoldenGate Hub source database admin credentials"
}
variable "source_microservices_deployment_name"{
    type        = string
    default     = "Mysource"
    description = "The name of the deployment for the source microservices"
}
variable "migration_golden_gate_details_hub_target_db_admin_credentials_password"{
    type        = string
    default     = ""
    description = "The password for the GoldenGate Hub target database admin credentials"
}
variable "migration_golden_gate_details_hub_target_db_admin_credentials_username"{
    type        = string
    default     = ""
    description = "The username for the GoldenGate Hub target database admin credentials"
}
variable "target_microservices_deployment_name"{
    type        = string
    default     = "Mytarget"
    description = "The name of the deployment for the target microservices"
}
variable "migration_golden_gate_details_hub_url"{
    type        = string
    default     = ""
    description = "The URL for the GoldenGate Hub"
}
variable "migration_golden_gate_details_hub_source_container_db_admin_credentials_password"{
    type        = string
    default     = ""
    description = "The password for the GoldenGate Hub source container database admin credentials"
}
variable "migration_golden_gate_details_hub_source_container_db_admin_credentials_username"{
    type        = string
    default     = ""
    description = "The username for the GoldenGate Hub source container database admin credentials"
}
variable "migration_include_objects_object"{
    type        = string
    default     = "Myobject"
    description = "The name of an object to be included in the migration"
}
variable "migration_include_objects_owner"{
    type        = string
    default     = "Myowner"
    description = "The owner of the object to be included in the migration"
}
variable "compartment_ocid"{
    type        = string
    default     = ""
    description = "compartment_ocid"
}
variable "test_key_ocid"{
    type        = string
    default     = ""
    description = "The OCID (Oracle Cloud Identifier) of the test key"
}
variable "test_vault_ocid"{
    type        = string
    default     = ""
    description = "The OCID (Oracle Cloud Identifier) of the test vault"
}
