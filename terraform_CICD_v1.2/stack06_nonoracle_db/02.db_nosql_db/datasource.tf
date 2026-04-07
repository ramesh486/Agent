data "oci_identity_compartments" "db_compartment" {
    compartment_id               = var.tenancy_ocid
    compartment_id_in_subtree    = var.db_compartment_id_in_subtree
    name                         = var.db_compartment_name
}
