resource "oci_identity_compartment" "this" {
  compartment_id = var.compartment_ocid
  name           = var.compartment_name
  description    = var.compartment_description
  enable_delete  = var.enable_delete
  defined_tags   = var.definedTags
  freeform_tags  = var.freeformTags
}