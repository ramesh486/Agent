resource "oci_waas_custom_protection_rule" "test_custom_protection_rule" {
    compartment_id      = var.compartment_ocid
    template            = var.custom_protection_rule_template
    description         = var.custom_protection_rule_description
    display_name        = var.custom_protection_rule_display_name
    defined_tags        = var.project_tag.definedTags
    freeform_tags       = var.project_tag.freeformTags
}

