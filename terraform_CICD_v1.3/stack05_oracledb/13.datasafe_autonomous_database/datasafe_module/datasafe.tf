resource "oci_data_safe_target_database" "this" {

    compartment_id                     = var.compartment_ocid
    defined_tags                       = var.project_tag.definedTags
    description                        = var.target_database_datasafe_description
    display_name                       = var.target_database_datasafe_display_name
    freeform_tags                      = var.project_tag.freeformTags
    database_details {

        database_type                  = var.target_database_details_database_type
        infrastructure_type            = var.target_database_details_infrastructure_type
        autonomous_database_id         = var.autonomous_database_ocid
    }
    connection_option {
        connection_type                 = var.target_database_connection_option_connection_type
        datasafe_private_endpoint_id    = var.datasafe_private_endpoint_ocid
    }
}