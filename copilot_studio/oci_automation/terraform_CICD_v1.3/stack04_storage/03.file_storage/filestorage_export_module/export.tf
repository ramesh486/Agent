resource "oci_file_storage_export_set" "this" {
  mount_target_id     = var.mount_target_ocid
  display_name        = var.export_set_name
}

resource "oci_file_storage_export" "this" {
  export_set_id       = resource.oci_file_storage_export_set.this.id 
  file_system_id      = var.file_system_ocid 
  path                = var.export_path
}