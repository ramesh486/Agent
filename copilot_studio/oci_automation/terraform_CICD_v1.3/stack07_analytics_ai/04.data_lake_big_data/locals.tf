locals{
    app_compartment_ocid         = data.oci_identity_compartments.app_compartment.compartments[0].id
    network_compartment_ocid     = data.oci_identity_compartments.network_compartment.compartments[0].id
    master_subnet_ocid           = data.oci_core_subnets.master_subnet.subnets[0].id
    util_subnet_ocid             = data.oci_core_subnets.util_subnet.subnets[0].id
    worker_subnet_ocid           = data.oci_core_subnets.worker_subnet.subnets[0].id
}