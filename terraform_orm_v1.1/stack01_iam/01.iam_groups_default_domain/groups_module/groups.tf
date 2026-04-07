resource "oci_identity_group" "group1" {
    compartment_id      = var.tenancy_ocid
    description         = var.group_description
    name                = var.group_name
    defined_tags        = var.definedTags
    freeform_tags       = var.freeformTags
}
