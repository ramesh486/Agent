module  database_group {
     source                                = "./db_module"
    #Required
    compartment_ocid                       = var.compartment_ocid
    managed_database_group_name            = var.managed_database_group_name
    #Optional
    managed_database_group_description     = var.managed_database_group_description
    # managed_database_id                  = var.managed_database_id
}