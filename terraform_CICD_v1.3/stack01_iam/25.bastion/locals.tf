locals{
    security_compartment_ocid    = data.oci_identity_compartments.security_compartment.compartments[0].id
    network_compartment_ocid     = data.oci_identity_compartments.network_compartment.compartments[0].id
    subnet_ocid                  = data.oci_core_subnets.this.subnets[0].id
}
