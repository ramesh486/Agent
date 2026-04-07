resource "oci_kms_vault" "vault" {
  compartment_id           = var.compartment_ocid
  display_name             = var.vault_display_name
  vault_type               = var.vault_type
  defined_tags             = var.project_tag.definedTags
  freeform_tags            = var.project_tag.freeformTags
}