locals{
    monitoring_compartment_ocid          = data.oci_identity_compartments.monitoring_compartment.compartments[0].id
    #app_compartment_ocid                 = data.oci_identity_compartments.app_compartment.compartments[0].id
}