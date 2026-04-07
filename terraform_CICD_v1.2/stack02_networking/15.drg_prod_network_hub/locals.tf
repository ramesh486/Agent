locals {
    compartment_ocid = data.oci_identity_compartments.network_compartments.compartments[0].id
    cidr_block = "CIDR_BLOCK"
}

  
