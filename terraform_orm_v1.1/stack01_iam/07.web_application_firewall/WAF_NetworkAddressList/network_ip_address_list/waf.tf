resource "oci_waf_network_address_list" "test_network_ip_address_list" {
    compartment_id = var.compartment_ocid
    type = var.network_address_list_type
    addresses = [var.network_address_list_addresses]
    defined_tags = var.definedTags
    display_name = var.network_address_list_display_name
    freeform_tags = var.freeformTags
}
