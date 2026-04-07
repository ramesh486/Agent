data "oci_identity_groups" "this" {
    compartment_id = var.tenancy_ocid
    name = var.iamuser_group_name
}
