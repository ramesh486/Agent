locals {
security_compartment_ocid = data.oci_identity_compartments.security_compartment.compartments[0].id
network_compartment_ocid  = data.oci_identity_compartments.network_compartment.compartments[0].id
vcn_ocid                  = data.oci_core_vcns.test_vcns.virtual_networks[0].id
}

