
resource "oci_waf_network_address_list" "test_network_vcn_address_list" {
    compartment_id = var.compartment_ocid
    type = var.network_address_list_type
    defined_tags = var.definedTags
    display_name = var.network_address_list_display_name
    freeform_tags = var.freeformTags
    vcn_addresses {
        addresses = var.network_address_list_vcn_addresses_addresses
        vcn_id = var.vcn_ocid
    }
}

