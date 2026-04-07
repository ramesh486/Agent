locals{
    network_compartment_ocid       = data.oci_identity_compartments.network.compartments[0].id
    appdev_subnet_ocid             = data.oci_core_subnets.appdev_subnet.subnets[0].id
    dbdev_subnet_ocid              = data.oci_core_subnets.dbdev_subnet.subnets[0].id
    apptst_subnet_ocid             = data.oci_core_subnets.apptst_subnet.subnets[0].id
    dbtst_subnet_ocid              = data.oci_core_subnets.dbtst_subnet.subnets[0].id
    monitoring_compartment_ocid    = data.oci_identity_compartments.monitoring.compartments[0].id
}

