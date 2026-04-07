data "oci_identity_compartments" "security_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.security_compartment_id_in_subtree
    name                         = var.security_compartment_name
}