resource "oci_waas_certificate" "test_certificate" {
    compartment_id                  = var.compartment_ocid
    certificate_data                = var.certificate_certificate_data
    private_key_data                = var.certificate_private_key_data
    display_name                    = var.certificate_display_name
    is_trust_verification_disabled  = var.certificate_is_trust_verification_disabled
    defined_tags                    = var.project_tag.definedTags
    freeform_tags                   = var.project_tag.freeformTags
}

