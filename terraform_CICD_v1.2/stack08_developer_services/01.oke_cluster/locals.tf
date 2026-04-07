locals{
    app_compartment_ocid          = data.oci_identity_compartments.app_compartment.compartments[0].id
    network_compartment_ocid      = data.oci_identity_compartments.network_compartment.compartments[0].id
    k8s_api_endpoint_subnet_ocid  = data.oci_core_subnets.k8s_api_endpoint_subnet.subnets[0].id
    worker_node_subnet_ocid       = data.oci_core_subnets.worker_node_subnet.subnets[0].id
    load_balancer_subnet_ocid     = [data.oci_core_subnets.load_balancer_subnet.subnets[0].id]
    vcn_ocid                      = data.oci_core_vcns.this.virtual_networks[0].id

}

