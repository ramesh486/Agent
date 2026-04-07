resource "oci_waas_address_list" "test_address_list" {
    compartment_id           = var.compartment_ocid
    addresses                = var.address_list_addresses
    display_name             = var.address_list_display_name
    defined_tags             = var.project_tag.definedTags
    freeform_tags            = var.project_tag.freeformTags
}

