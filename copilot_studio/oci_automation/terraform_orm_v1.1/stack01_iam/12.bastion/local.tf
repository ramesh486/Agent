locals{
    compartment_ocid     = data.oci_identity_compartments.this.compartments[0].id
    target_subnet_ocid   = data.oci_core_subnets.this.subnets[0].id
    
}
