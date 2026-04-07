
resource "oci_identity_domain" "test_domain" {
    compartment_id = var.compartment_ocid
    description    = var.domain_description
    display_name   = var.domain_display_name
    home_region    = var.domain_home_region
    license_type   = var.domain_license_type
    defined_tags   = var.definedTags
    freeform_tags  = var.freeformTags
}
