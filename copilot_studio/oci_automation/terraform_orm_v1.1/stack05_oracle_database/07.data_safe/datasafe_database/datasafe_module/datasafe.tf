resource "oci_data_safe_target_database" "this" {
    #Required
    compartment_id      = var.compartment_ocid
    defined_tags        = var.project_tag.definedTags
    description         = var.target_database_datasafe_description
    display_name        = var.target_database_datasafe_display_name
    freeform_tags       = var.project_tag.freeformTags

    database_details {

        database_type           = var.target_database_details_database_type
        infrastructure_type     = var.target_database_details_infrastructure_type
        autonomous_database_id  = var.autonomous_database_ocid
        db_system_id            = var.database_db_system_ocid
        instance_id             = var.instance_ocid
        ip_addresses            = var.target_database_database_details_ip_addresses == [""] ? [] : var.target_database_database_details_ip_addresses
        listener_port           = var.target_database_database_details_listener_port
        service_name            = var.database_service_name
        vm_cluster_id           = var.database_vm_cluster_ocid
    }

    #Optional
    connection_option {
        connection_type                 = var.target_database_connection_option_connection_type
        datasafe_private_endpoint_id    = var.datasafe_private_endpoint_ocid
        on_prem_connector_id            = var.data_safe_on_prem_connector_ocid
    }

    credentials {
        #Required
        password    = var.target_database_password
        user_name   = var.target_database_user_name
    }
}