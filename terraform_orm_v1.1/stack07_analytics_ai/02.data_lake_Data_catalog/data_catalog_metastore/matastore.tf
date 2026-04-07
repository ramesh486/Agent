resource "oci_datacatalog_metastore" "test_metastore" {
    #Required
    compartment_id                  = var.compartment_ocid
    default_external_table_location = var.metastore_default_external_table_location
    default_managed_table_location  = var.metastore_default_managed_table_location
    display_name                    = var.metastore_display_name
    
}