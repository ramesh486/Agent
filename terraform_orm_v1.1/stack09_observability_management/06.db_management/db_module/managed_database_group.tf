resource "oci_database_management_managed_database_group" "managed_database_group" {
    #Required
    compartment_id  = var.compartment_ocid
    name            = var.managed_database_group_name

    #Optional
    description     = var.managed_database_group_description
        # managed_databases {
        #  id       = var.managed_database_id
        # }
}