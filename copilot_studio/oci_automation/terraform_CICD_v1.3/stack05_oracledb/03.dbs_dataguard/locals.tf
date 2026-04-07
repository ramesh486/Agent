locals{
    compartment_ocid             = data.oci_identity_compartments.this.compartments[0].id
    dbdev_subnet_ocid            = data.oci_core_subnets.dbdev_subnet.subnets[0].id
    network_compartment_ocid     = data.oci_identity_compartments.network.compartments[0].id
    dbtst_subnet_ocid            = data.oci_core_subnets.dbtst_subnet.subnets[0].id
   
}
