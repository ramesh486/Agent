# --------------------------------------------------------
# DRG Attachments
# --------------------------------------------------------
resource oci_core_drg_attachment this {
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
  display_name       = var.oci_core_drg_attachment_display_name
  drg_id             = var.drg_ocid
  network_details {
    id = var.vcn_ocid
    type           = local.network_details_type
  }
}