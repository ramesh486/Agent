resource "oci_data_safe_data_safe_private_endpoint" "this" {
    compartment_id      = var.compartment_ocid
    display_name        = var.data_safe_private_endpoint_display_name
    description         = var.data_safe_private_endpoint_description
    subnet_id           = var.subnet_ocid
    vcn_id              = var.vcn_ocid
    freeform_tags       = var.project_tag.freeformTags
    defined_tags        = var.project_tag.definedTags
    nsg_ids             = var.data_safe_private_endpoint_nsg_ocids
}