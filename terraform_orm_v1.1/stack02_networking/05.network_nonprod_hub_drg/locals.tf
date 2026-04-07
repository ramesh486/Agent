locals {
    compartment_ocid = data.oci_identity_compartments.test_compartments.compartments[0].id
    cidr_block = "CIDR_BLOCK"
}

  
