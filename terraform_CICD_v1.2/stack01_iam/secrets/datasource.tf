data "oci_identity_compartments" "this" {
    compartment_id = var.tenancy_ocid
    compartment_id_in_subtree = var.compartment_id_in_subtree
    name = var.compartment_name
}

data "oci_kms_vaults" "this" {
    compartment_id = local.compartment_ocid
    filter {
        name            = "display_name"
        values           = ["${var.vault_display_name}"]
    }
}

data "oci_kms_keys" "this" {
    compartment_id       = local.compartment_ocid
    management_endpoint  = local.key_management_endpoint
    filter {
        name            = "display_name"
        values           = ["${var.master_display_name}"]
    }
}
