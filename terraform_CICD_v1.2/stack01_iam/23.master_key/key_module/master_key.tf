resource "oci_kms_key" "test_key" {
    #Required
    compartment_id      = var.compartment_ocid
    display_name        = var.key_display_name
    key_shape {
        #Required
        algorithm       = var.key_shape_algorithm
        length          = var.key_shape_length
    }
    management_endpoint = var.key_management_endpoint
    defined_tags        = var.project_tag.definedTags
    freeform_tags       = var.project_tag.freeformTags
    protection_mode     = var.key_protection_mode
}