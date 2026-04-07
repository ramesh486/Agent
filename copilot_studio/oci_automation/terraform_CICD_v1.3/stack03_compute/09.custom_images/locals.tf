locals {
    app_compartment_ocid            = data.oci_identity_compartments.app_compartment.compartments[0].id
    instance_ocid                   = data.oci_core_instances.this.instances[0].id
}