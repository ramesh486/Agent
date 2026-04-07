resource "oci_core_volume" "this" {
  availability_domain   = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  compartment_id        = var.compartment_ocid
  display_name          = var.volume_display_name
  is_auto_tune_enabled  = var.volume_is_auto_tune_enabled 
  size_in_gbs           = var.volume_size_in_gbs 
  vpus_per_gb           = var.volume_vpus_per_gb 
  defined_tags          = var.project_tag.definedTags
  freeform_tags         = var.project_tag.freeformTags
}

resource "oci_core_volume_backup_policy_assignment" "this" {
  asset_id    = oci_core_volume.this.id
  policy_id   = data.oci_core_volume_backup_policies.this.volume_backup_policies[0].id
}
