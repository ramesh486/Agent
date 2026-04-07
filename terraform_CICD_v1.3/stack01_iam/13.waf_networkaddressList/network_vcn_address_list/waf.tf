
resource "oci_waf_network_address_list" "test_network_vcn_address_list" {
    compartment_id    = var.compartment_ocid
    type              = var.network_address_list_type
    display_name      = var.network_address_list_display_name
    defined_tags      = var.project_tag.definedTags
    freeform_tags     = var.project_tag.freeformTags
    vcn_addresses {
        addresses     = var.network_address_list_vcn_addresses_addresses
        vcn_id        = var.vcn_ocid
    }
}

