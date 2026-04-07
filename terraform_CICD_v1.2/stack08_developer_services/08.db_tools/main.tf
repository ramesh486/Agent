module database_tools_private_endpoint_database_tools_connection {
    source                                                             = "./database_tool_module"
    oci_db_compartment_ocid                                            = local.db_compartment_ocid
    database_tools_connection_display_name                             = var.database_tools_connection_display_name
    database_tools_connection_type                                     = var.database_tools_connection_type
    database_tools_connection_connection_string                        = var.database_tools_connection_connection_string
    database_tools_connection_key_stores_key_store_content_value_type  = var.database_tools_connection_key_stores_key_store_content_value_type
    database_tools_connection_key_stores_key_store_password_value_type = var.database_tools_connection_key_stores_key_store_password_value_type
    database_tools_connection_key_stores_key_store_type                = var.database_tools_connection_key_stores_key_store_type
    database_tools_connection_related_resource_entity_type             = var.database_tools_connection_related_resource_entity_type
    database_tools_connection_related_resource_identifier              = var.database_tools_connection_related_resource_identifier
    user_name                                                          = var.user_name
    secret_ocid                                                        = var.secret_ocid
    database_tools_connection_user_password_value_type                 = var.database_tools_connection_user_password_value_type
    project_tag                                                        = var.project_tag
    private_endpoint_ocid                                              = module.database_tools_private_endpoint.private_endpoint_ocid

}

module database_tools_private_endpoint {
    source                                         = "./privite_endpoint_module"
    oci_db_compartment_ocid                        = local.db_compartment_ocid
    database_tools_private_endpoint_display_name   = var.database_tools_private_endpoint_display_name
    subnet_ocid                                    = local.subnet_ocid 
    project_tag                                    = var.project_tag
   
}
