data "oci_identity_compartments" "this" {
    compartment_id            = var.tenancy_ocid
    compartment_id_in_subtree = var.compartment_compartment_id_in_subtree
    name                      = var.compartment_name
}

data "oci_kms_keys" "this" {
    compartment_id               = local.compartment_ocid
    management_endpoint          = var.key_management_endpoint
	
}
