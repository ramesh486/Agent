locals {
security_compartment_ocid = data.oci_identity_compartments.security_compartment.compartments[0].id
}