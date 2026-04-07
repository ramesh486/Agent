data "oci_identity_compartments" "service_connector_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.service_connector_compartment_id_in_subtree
    name                         = var.service_connector_compartment_name
}

data "oci_identity_compartments" "logging_source_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.logging_source_compartment_id_in_subtree
    name                         = var.logging_source_compartment_name
}