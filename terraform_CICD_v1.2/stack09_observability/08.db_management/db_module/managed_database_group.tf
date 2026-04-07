resource "oci_database_management_managed_database_group" "managed_database_group" {
    compartment_id  = var.compartment_ocid
    name            = var.managed_database_group_name
    description     = var.managed_database_group_description
     
        
}