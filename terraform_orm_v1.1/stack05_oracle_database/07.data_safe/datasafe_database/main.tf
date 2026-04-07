module "datasafe" {
    source                                              = "./datasafe_module"
    compartment_ocid                                    = var.compartment_ocid
    project_tag                                         = var.project_tag 
    target_database_datasafe_display_name               = var.target_database_datasafe_display_name
    target_database_datasafe_description                = var.target_database_datasafe_description
    target_database_details_database_type               = var.target_database_details_database_type
    target_database_details_infrastructure_type         = var.target_database_details_infrastructure_type
    autonomous_database_ocid                            = var.autonomous_database_ocid
    database_db_system_ocid                             = var.database_db_system_ocid
    instance_ocid                                       = var.instance_ocid
    target_database_database_details_ip_addresses       = [ var.target_database_database_details_ip_addresses ]
    target_database_database_details_listener_port      = var.target_database_database_details_listener_port
    database_service_name                               = var.database_service_name
    database_vm_cluster_ocid                            = var.database_vm_cluster_ocid
    target_database_connection_option_connection_type   = var.target_database_connection_option_connection_type
    datasafe_private_endpoint_ocid                      = var.datasafe_private_endpoint_ocid
    data_safe_on_prem_connector_ocid                    = var.data_safe_on_prem_connector_ocid
}