locals {
    app_compartment_ocid            = data.oci_identity_compartments.app_compartment.compartments[0].id
    instance_pool_ocid              = data.oci_core_instance_pools.this.instance_pools[0].id
}