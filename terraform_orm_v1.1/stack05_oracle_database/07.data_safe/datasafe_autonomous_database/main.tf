module "datasafe" {
    source                                              = "./datasafe_module"
    compartment_ocid                                    = var.compartment_ocid
    project_tag                                         = var.project_tag 
    target_database_datasafe_display_name               = var.target_database_datasafe_display_name
    target_database_datasafe_description                = var.target_database_datasafe_description
    target_database_details_database_type               = var.target_database_details_database_type
    target_database_details_infrastructure_type         = var.target_database_details_infrastructure_type
    autonomous_database_ocid                            = var.autonomous_database_ocid
    target_database_connection_option_connection_type   = var.target_database_connection_option_connection_type
    datasafe_private_endpoint_ocid                      = var.datasafe_private_endpoint_ocid
}