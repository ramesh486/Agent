resource oci_database_tools_database_tools_connection this {
    compartment_id         = var.compartment_ocid
    display_name           = var.database_tools_connection_display_name
    type                   = var.database_tools_connection_type
    connection_string      = var.database_tools_connection_connection_string
    key_stores {
        key_store_content {
            value_type     = var.database_tools_connection_key_stores_key_store_content_value_type   
        }
        key_store_password {
            value_type     = var.database_tools_connection_key_stores_key_store_password_value_type    
        }
        key_store_type     = var.database_tools_connection_key_stores_key_store_type
    }
    private_endpoint_id    = var.private_endpoint_ocid
    related_resource {
        entity_type        = var.database_tools_connection_related_resource_entity_type
        identifier         = var.database_tools_connection_related_resource_identifier
    }
    user_name              = var.user_name 
    user_password {
        secret_id          = var.secret_ocid
        value_type         = var.database_tools_connection_user_password_value_type
    }
}