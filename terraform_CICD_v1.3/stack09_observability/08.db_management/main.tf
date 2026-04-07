#####################
###Database Group Module
#####################

module  database_group {
    source                                 = "./db_module"
    compartment_ocid                       = local.compartment_ocid
    managed_database_group_name            = var.managed_database_group_name
    managed_database_group_description     = var.managed_database_group_description
     
    
}