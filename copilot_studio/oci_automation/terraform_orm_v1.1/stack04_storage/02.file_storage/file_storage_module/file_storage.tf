resource "oci_file_storage_file_system" "file_storage_file_system" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  compartment_id      = var.compartment_ocid
  display_name        = var.file_system_display_name
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags
}

resource "oci_file_storage_mount_target" "file_storage_mount_target" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  compartment_id      = var.compartment_ocid
  display_name        = var.mount_target_display_name
  subnet_id           = var.subnet_ocid
  defined_tags        = var.project_tag.definedTags
  freeform_tags       = var.project_tag.freeformTags  
}

resource "oci_file_storage_export" "file_storage_export" {
  export_set_id       = oci_file_storage_mount_target.file_storage_mount_target.export_set_id
  file_system_id      = oci_file_storage_file_system.file_storage_file_system.id
  path                = var.export_path
}


