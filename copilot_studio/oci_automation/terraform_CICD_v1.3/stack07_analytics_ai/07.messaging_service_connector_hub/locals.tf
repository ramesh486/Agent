locals{
    service_connector_compartment_ocid          = data.oci_identity_compartments.service_connector_compartment.compartments[0].id
    logging_source_compartment_ocid             = data.oci_identity_compartments.logging_source_compartment.compartments[0].id
}