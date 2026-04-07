resource "oci_blockchain_blockchain_platform" "test_blockchain_platform" {
    #Required
    compartment_id    = var.compartment_ocid
    compute_shape     = var.blockchain_platform_compute_shape
    display_name      = var.blockchain_platform_display_name
    idcs_access_token = var.blockchain_platform_idcs_access_token
    platform_role     = var.blockchain_platform_platform_role
}