locals {
compartment_ocid      = data.oci_identity_compartments.this.compartments[0].id
kms_key_ocid           = data.oci_kms_keys.this.keys[0].id
}