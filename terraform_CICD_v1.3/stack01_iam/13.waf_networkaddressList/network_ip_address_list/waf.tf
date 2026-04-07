resource "oci_waf_network_address_list" "test_network_ip_address_list" {
    compartment_id    = var.compartment_ocid
    type              = var.network_address_list_type
    addresses         = [var.network_address_list_addresses]
    display_name      = var.network_address_list_display_name
    defined_tags      = var.project_tag.definedTags
    freeform_tags     = var.project_tag.freeformTags
}
