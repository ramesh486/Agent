locals {
compartment_ocid = data.oci_identity_compartments.this.compartments[0].id
}
