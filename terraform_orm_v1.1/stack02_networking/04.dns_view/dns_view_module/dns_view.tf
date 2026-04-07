resource "oci_dns_view" "this" {
    compartment_id  = var.compartment_ocid
    scope           = var.scope
    defined_tags    = var.project_tag.definedTags
    display_name    = var.dns_view_display_name
    freeform_tags   = var.project_tag.freeformTags
}