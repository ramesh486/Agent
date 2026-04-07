locals{
    compartment_ocid     = data.oci_identity_compartments.this.compartments[0].id
    load_balancer_ocid   = data.oci_load_balancer_load_balancers.this.load_balancers[0].id
}