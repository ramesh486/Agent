resource oci_database_tools_database_tools_private_endpoint this {
    compartment_id       = var.oci_db_compartment_ocid
    display_name         = var.database_tools_private_endpoint_display_name
    endpoint_service_id  = data.oci_database_tools_database_tools_endpoint_service.test_database_tools_endpoint_service.id
    subnet_id            = var.subnet_ocid
    defined_tags         = var.project_tag.definedTags
    freeform_tags        = var.project_tag.freeformTags
}

data "oci_database_tools_database_tools_endpoint_services" "test_database_tools_endpoint_services" {
  compartment_id         = var.oci_db_compartment_ocid
}

data "oci_database_tools_database_tools_endpoint_service" "test_database_tools_endpoint_service" {
  database_tools_endpoint_service_id = data.oci_database_tools_database_tools_endpoint_services.test_database_tools_endpoint_services.database_tools_endpoint_service_collection.0.items.0.id
}

output "endpoint_service" {
  value                 = data.oci_database_tools_database_tools_endpoint_service.test_database_tools_endpoint_service
}
