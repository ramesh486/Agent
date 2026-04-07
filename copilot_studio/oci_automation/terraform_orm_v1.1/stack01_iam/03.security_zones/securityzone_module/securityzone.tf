resource "oci_cloud_guard_security_zone" "this" {
    compartment_id           = var.compartment_ocid
    display_name             = var.security_zone_display_name
    security_zone_recipe_id  = var.security_recipe_ocid
    defined_tags             = var.definedTags
    freeform_tags            = var.freeformTags
}